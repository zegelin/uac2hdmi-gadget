#!/bin/bash
BR_IMAGES="buildroot-2022.02/output/images"

qemu-img resize $BR_IMAGES/sdcard.img 256M

qemu-system-arm -M raspi0 \
	-kernel $BR_IMAGES/zImage -dtb $BR_IMAGES/bcm2708-rpi-zero-w.dtb \
	-initrd $BR_IMAGES/rootfs.cpio \
	-append "earlycon=pl011,0x20201000 console=ttyAMA0,115200 initcall_blacklist=bcm2835_pm_driver_init dwc_otg.lpm_enable=0 dwc_otg.fiq_fsm_enable=0" \
	-serial stdio \
	-usbdevice keyboard \
	-net nic -net user,hostfwd=tcp::5022-:22


