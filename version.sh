#!/bin/bash
set -e
VERSION=$(curl -sL https://clonezilla.org/downloads/stable/data/CHECKSUMS.TXT | awk -F '(clonezilla-live-|-amd64.iso)' '/clonezilla-live-/ {print $2;exit}')
echo "${VERSION}"
