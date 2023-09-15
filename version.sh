#!/bin/bash
set -e
VERSION=$(curl -sL https://vyos.net/get/nightly-builds  | grep -i amd64.iso | head -n 1 | awk -F'/' {'print $8'})
echo "${VERSION}"
