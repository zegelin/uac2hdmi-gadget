#!/bin/bash -xue
BR_IMAGES="buildroot-2022.02/output/images"

LO=$(losetup --find --show -P $BR_IMAGES/sdcard.img)

mkdir -p /mnt/sdcard
mount ${LO}p1 /mnt/sdcard