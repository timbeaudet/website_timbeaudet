<?php

$images = array();
foreach (glob("./*.jpg") as $pic) {
	$images[] = $pic;
}

//These were not appearing to do anything to help caching.
//header("Cache-Control: public");
//header("Cache-Control: max-age=20, public");

header('Expires: '.gmdate('D, d M Y H:i:s \G\M\T', time() + (20))); //20 seconds
header("Cache-Control: max-age=20, public");
//header("Location: https://www.timbeaudet.com/pets/" . $images[array_rand($images)]);
//header("Location: https://www.timbeaudet.com/pets/sara_01.jpg");

header("Content-type: image/jpeg");
echo file_get_contents($images[array_rand($images)]);

//$image = imagecreatefromjpeg($images[array_rand($images)]);
//imagejpeg($image);
