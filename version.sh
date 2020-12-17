#!/bin/bash
set -e
VERSION=$(curl -sL http://mirrors.gigenet.com/linuxmint/iso/debian/sha256sum.txt | awk -F '(lmde-|-cinnamon-64bit.iso)' '/-cinnamon-64bit.iso/ {print $2}' | tail -n1)
echo "${VERSION}"
