#!/bin/bash
set -e
VERSION=$(curl -sL https://sparkylinux.org/download/rolling/ | grep -B 2 LXQt | head -n 2 | grep -Po "(\d+\.)+\d+")
echo "${VERSION}"
