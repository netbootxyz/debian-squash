#!/bin/bash
set -e
VERSION=$(curl -sfL https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/current-live/amd64/iso-hybrid/SHA256SUMS | awk -F '(debian-live-|-amd64-kde)' '/-amd64-kde/ {print $2;exit}')
echo "${VERSION}"
