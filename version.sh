#!/bin/bash
set -e
VERSION=$(curl -sL https://deb.parrot.sh/direct//parrot/iso/5.1.2/signed-hashes.txt | grep "Parrot OS" | awk -F' ' '{print $3}')
echo "${VERSION}"
