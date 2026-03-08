#!/bin/bash

# 2026-01-25: By using $DIR/ we can ensure the deploy script works from anywhere it is called -tsjost.
DIR=`dirname "$(readlink -f "$0")"`

color_reset=`tput sgr0`
color_bold=`tput bold`
color_dim=`tput dim`
color_black=`tput setaf 0`
color_white=`tput setaf 7`
color_redbg=`tput setab 1`
color_orangebg=`tput setab 3`

cat <<'EOF'
 \ \    / ___| |__/__(_| |_ ___  |   \ ___ _ __| |___ _  _
  \ \/\/ / -_| '_ (_-| |  _/ -_) | |) / -_| '_ | / _ | || |
   \_/\_/\___|_.__/__|_|\__\___| |___/\___| .__|_\___/\_, |
                                          |_|         |__/

EOF

# Abort script on error
set -e

DEPLOY_TARGET_LABEL="${color_bold}${color_white}${color_redbg} PRODUCTION ${color_reset}"
DEPLOY_NAME="production"
SERVER_USER="timbeaudet@timbeaudet.com"
SERVER_LOCATION="timbeaudet/public"

echo "Running Ansible"
export ANSIBLE_CONFIG=$DIR/ansible/ansible.cfg
ansible-playbook -v -i $DIR/ansible/inventory $DIR/ansible/server_setup.yml

# 2026-03-08: We may wish to consider smooshing the generated static site/blog from hugo and the public_area into
#   a single generated directory and rsync that, if anything gets more complicted than the exclude from below.
echo "Generating Blog with Hugo"
cd "$DIR/blog" && hugo && cd "$DIR"

echo "Deploying to ${DEPLOY_TARGET_LABEL}..."

# 2026-03-08: --exclude-from was added because the symlink directories in ansible that would be removed with --delete
#   So any symlinks timbeaudet.com/LINK/ (anywhere in public directory, like goods) need to be excluded from the
#   rsync since the --delete would remove it. And it seems that a symlink acts as a file would for --exclude-from;
#   so don't add a trailing / like: `goods/`, use just: `goods`

rsync -avhiP ${SPEED_LIMIT} --mkpath --progress --delete --exclude-from "./deploy_excludes.txt" "$DIR/public_area/" ${SERVER_USER}:${SERVER_LOCATION}"/"
rsync -avhiP ${SPEED_LIMIT} --mkpath --progress --delete  "$DIR/blog/public/" ${SERVER_USER}:${SERVER_LOCATION}"/blog/"
