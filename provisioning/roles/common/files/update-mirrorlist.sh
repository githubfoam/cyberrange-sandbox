#!/bin/bash

country=DE

url="https://www.archlinux.org/mirrorlist/?country=${country}&protocol=http&ip_version=4&use_mirror_status=on"

tmpfile=$(mktemp --suffix=-mirrorlist)

# Download best 10 up-to-date mirrors
wget -q -O - $url | sed 's/#Server/Server/;/^#/d;/^$/d' | head -n 10 > $tmpfile

# Check if file contains data
if [[ -s $tmpfile ]]; then
    # Backup current mirrorlist
    cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
    # Copy new mirrorlist sorted by connection speed
    rankmirrors $tmpfile > /etc/pacman.d/mirrorlist
else
    echo "Error recieving new mirrorlist."
fi

# Delete temp file
rm $tmpfile
