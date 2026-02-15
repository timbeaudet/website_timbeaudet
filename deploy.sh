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

echo "Generating Blog with Hugo"
cd "$DIR/blog" && hugo && cd "$DIR"

echo "Running Ansible"
export ANSIBLE_CONFIG=$DIR/ansible/ansible.cfg
ansible-playbook -v -i $DIR/ansible/inventory $DIR/ansible/server_setup.yml

echo "Deploying to ${DEPLOY_TARGET_LABEL}..."

# 2026-01-25: Added --delete to the eggcelerate/public_area line, this should probably be the default in an rsync from the
#   source repository onto the webhost for any of the things being copied.

rsync -avhiP ${SPEED_LIMIT} --mkpath --progress --delete "$DIR/public_area/" ${SERVER_USER}:${SERVER_LOCATION}"/"
rsync -avhiP ${SPEED_LIMIT} --mkpath --progress --delete "$DIR/blog/public/" ${SERVER_USER}:${SERVER_LOCATION}"/blog/"

# if [[ $DEPLOY_TYRE_BYTES_API == true || $DEPLOY_EVERYTHING == true ]]; then
# 	#--exclude-from was added because the press kit contains install.php which should not be uploaded. However pay attention to
# 	#location of file/path in deploy_excludes.txt as it is already relative ./public/ and adding a ./ will break things as well.
# 	#to exclude "./public/press/install.php" you need to exclude "press/install.php"
# 	echo "Deploying TyreBytes API Stuff"
# 	rsync -avhiP ${SPEED_LIMIT} --progress "./settings_${DEPLOY_NAME}.php" "${SERVER_USER}:${SERVER_LOCATION}/settings.php"
# 	rsync -avhiP ${SPEED_LIMIT} --progress --exclude-from="./deploy_excludes.txt" "./public/" "${SERVER_USER}:${SERVER_LOCATION}"
# fi
