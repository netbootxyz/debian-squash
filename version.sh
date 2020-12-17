#!/bin/bash
set -e
VERSION=$(curl -sL https://sparkylinux.org/download/stable/ | awk '/LXQt/ {print $1;exit}' | grep -Po "(\d+\.)+\d+")
echo "${VERSION}"
