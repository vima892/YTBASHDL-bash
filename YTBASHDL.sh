#!/bin/bash

read -p "Insert link of playlist or video: " link
read -p "Insert the path of the storage folder(ex. /home/user/Music): " path1
path1=$path1"/%(title)s.%(ext)s"
youtube-dl -xi --audio-format flac --audio-quality 0 --output $path1 --yes-playlist $link 
echo "Done!"
