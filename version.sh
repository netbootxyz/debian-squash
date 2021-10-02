#!/bin/bash
set -e
VERSION=$(curl -sL https://clonezilla.org/downloads/stable/data/CHECKSUMS.TXT | grep i686.iso | awk -F '(clonezilla-live-|-i686.iso)' '/clonezilla-live-/ {print $2;exit}')
echo "${VERSION}"
