#!/bin/bash
set -e
VERSION=$(curl -sL https://sparkylinux.org/download/rolling/ | grep x86_64-lxqt.iso | awk -F'-' '{print $3;exit}')
echo "${VERSION}"
