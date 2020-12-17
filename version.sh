#!/bin/bash
set -e
VERSION=$(curl -sL https://sourceforge.net/projects/sparkylinux/files/lxqt/ | awk -F '(sparkylinux-|-x86_64-lxqt.iso)' '/-x86_64-lxqt.iso/ {print $2;exit}')
echo "${VERSION}"
