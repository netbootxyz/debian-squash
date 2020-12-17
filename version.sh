#!/bin/bash
set -e
VERSION=$(curl -sfL https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/current-live/amd64/iso-hybrid/MD5SUMS | awk -F '(debian-live-|-amd64-cinnamon)' '/-amd64-cinnamon/ {print $2;exit}')
echo "${VERSION}"
