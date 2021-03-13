URL="https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/current-live/amd64/iso-hybrid/debian-live-REPLACE_VERSION-amd64-xfce+nonfree.iso"
TYPE=file
CONTENTS="\
live/initrd*|initrd
live/vmlinuz*|vmlinuz"
EXTRACT_INITRD="true"
INITRD_NAME="initrd"
INITRD_TYPE="gz"
