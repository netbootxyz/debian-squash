#!/bin/bash
set -e
VERSION=$(curl -s https://sourceforge.net/projects/septor/files/latest/download | awk -F '(Septor-|-amd64.iso)' '/Septor-/ {print $2;exit}')
echo "${VERSION}"
