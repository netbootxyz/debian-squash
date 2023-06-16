#!/bin/bash
set -e
VERSION=$(curl -sfL https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/SHA256SUMS | awk -F '(debian-live-|-amd64-xfce)' '/-amd64-xfce/ {print $2;exit}')
echo "${VERSION}"
