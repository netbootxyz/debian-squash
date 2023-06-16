#!/bin/bash
set -e
VERSION=$(curl -sfL https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/SHA256SUMS | awk -F '(debian-live-|-amd64-cinnamon)' '/-amd64-cinnamon/ {print $2;exit}')
echo "${VERSION}"
