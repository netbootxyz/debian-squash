#!/bin/bash
set -e
VERSION=$(curl -sL https://sourceforge.net/projects/sparkylinux/files/xfce/ | awk -F '(sparkylinux-|-x86_64-xfce.iso)' '/-x86_64-xfce.iso/ {print $2;exit}')
echo "${VERSION}"
