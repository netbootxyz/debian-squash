#!/bin/bash
set -e
VERSION=$(curl -sfL https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/SHA256SUMS | awk -F '(debian-live-|-amd64-lxqt)' '/-amd64-lxqt/ {print $2;exit}')
echo "${VERSION}"
