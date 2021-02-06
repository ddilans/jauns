#!/bin/sh
cp filesystem.img filesystem.img.mod
#qemu-system-x86_64 -bios /usr/share/edk2-ovmf/OVMF_CODE.secboot.fd -m 512 -drive file=filesystem.img.mod,format=raw,index=0,media=disk
#qemu-system-x86_64 -m 512 -drive file=filesystem.img.mod,format=raw,index=0,media=disk -kernel linux-5.10.12/arch/x86/boot/bzImage -initrd initramfs.cpio.gz -append "root=/dev/hda clock=pit ro"
qemu-system-x86_64 -m 512 -drive file=filesystem.img.mod,format=raw,index=0,media=disk
