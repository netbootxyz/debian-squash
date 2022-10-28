#!/bin/bash
set -e
VERSION=$(curl -sL https://sparkylinux.org/download/rolling/ | awk -F '(sparkylinux-|-x86_64-lxqt.iso)' '/-x86_64-lxqt.iso/ {print $2;exit}')
echo "${VERSION}"
