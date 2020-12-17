#!/bin/bash
set -e
VERSION=$(curl -sL https://sourceforge.net/projects/clonezilla/files/clonezilla_live_testing/ |awk -F'"' '/<tr title
echo "${VERSION}"
