#!/bin/bash
set -e
VERSION=$(curl -s https://sourceforge.net/projects/live-raizo/files/latest/download | awk -F '(Live-Raizo-|.iso)' '/Live-Raizo-/ {print $2}')
echo "${VERSION}"
