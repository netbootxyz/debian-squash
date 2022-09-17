#!/bin/bash
set -e
VERSION=$(curl -s https://www.deepin.org/en/download/ | awk -F '(deepin-desktop-community-|-amd64.iso)' '/deepin-desktop-community-/ {print $2;exit}')
echo "${VERSION}"
