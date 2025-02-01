#!/bin/bash
set -e
# current check broken, hopefully it comes back
#VERSION=$(curl -sL https://deb.parrot.sh/direct//parrot/iso/current/signed-hashes.txt | grep "Parrot OS" | awk -F' ' '{print $3}')
VERSION=$(curl -sL https://deb.parrot.sh/parrot/iso/6.3.2/signed-hashes.txt | grep "Parrot OS" | awk -F' ' '{print $3}')
echo "${VERSION}"
