#!/bin/bash
set -e
VERSION=$(curl -sfL https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/current-live/amd64/iso-hybrid/MD5SUMS | awk -F '(debian-live-|-amd64-gnome)' '/-amd64-gnome/ {print $2;exit}')
echo "${VERSION}"
