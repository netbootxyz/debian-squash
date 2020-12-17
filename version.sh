#!/bin/bash
set -e
VERSION=$(curl -sL https://gparted.org/download.php | awk -F '(gparted-live-|-amd64.iso)' '/-amd64.iso/ {print $2}')
echo "${VERSION}"
