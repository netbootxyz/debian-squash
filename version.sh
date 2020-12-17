#!/bin/bash
set -e
VERSION=$(curl -sfL https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/current-live/amd64/iso-hybrid/MD5SUMS | awk -F '(debian-live-|-amd64-lxqt)' '/-amd64-lxqt/ {print $2;exit}')
echo "${VERSION}"
