#!/bin/bash
set -e
VERSION=$(curl -sL curl -s https://downloads.vyos.io/?dir=rolling/current/amd64 | grep -i `date +%Y%m01` | head -n 1 | awk -F'-' {'print $5'})
echo "${VERSION}"
