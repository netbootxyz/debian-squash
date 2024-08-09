#!/bin/bash
set -e
VERSION=$(curl -sL http://mirrors.edge.kernel.org/linuxmint/debian/sha256sum.txt | awk -F '(lmde-|-cinnamon-64bit.iso)' '/-cinnamon-64bit.iso/ {print $2}' | tail -n1)
echo "${VERSION}"
