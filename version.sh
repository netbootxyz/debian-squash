#!/bin/bash
set -e
VERSION="$(curl -sL https://q4os.org/downloads1.html  | grep iso | head -n 1 | awk -F'-' '{print $2}')"
echo "${VERSION}"
