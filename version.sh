#!/bin/bash
set -e
VERSION=$(curl -sfL https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/SHA256SUMS | grep 'standard.iso' | grep -Po "(\d+\.)+\d+" | head -n1)
echo "${VERSION}"
