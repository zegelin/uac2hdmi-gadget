#!/bin/bash

sudo ./img-mount.sh

rpiusbboot -d /mnt/sdcard

sudo ./img-umount.sh

