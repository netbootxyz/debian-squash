#!/bin/bash
set -e
VERSION=$(curl -sL https://www.parrotlinux.org/download-home.php | grep 'download.parrot.sh' | grep -Po "(\d+\.)+\d+" | head -1)
echo "${VERSION}"
