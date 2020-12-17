#!/bin/bash
set -e
VERSION=$(curl -sL https://www.supergrubdisk.org/category/download/rescatuxdownloads/rescatux-beta/ | awk -F '(rescatux-|.iso)' '/sourceforge.net\/projects\/rescatux/ {print $3;exit}')
echo "${VERSION}"
