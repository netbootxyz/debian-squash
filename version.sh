#!/bin/bash
set -e
VERSION=$(curl -s https://cdimage.kali.org/ | awk -F '(kali-|/)' '/kali-/ {print $5}' |grep -v weekly | tail -n1)
echo "${VERSION}"
