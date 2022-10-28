#!/bin/bash
set -e
VERSION=$(curl -sL https://sparkylinux.org/download/rolling/ | awk -F '(sparkylinux-|-x86_64-minimalgui.iso)' '/-x86_64-minimalgui.iso/ {print $2;exit}')
echo "${VERSION}"
