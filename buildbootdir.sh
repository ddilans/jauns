#!/bin/sh
BUILD_DIR="$PWD"
cp initramfs.cpio.gz /mnt/jauns/boot/initramfs.cpio.gz
cd linux-5.10.12
cp System.map /mnt/jauns/boot/System.map
cp arch/x86_64/boot/bzImage /mnt/jauns/boot/vmlinuz
cd "$BUILD_DIR"
#grub-install --efi-directory=/mnt/jauns/boot/ --bootloader-id=jauns /dev/loop0
grub-install --target=i386-pc --boot-directory=/mnt/jauns/boot /dev/loop0
cp -r grub /mnt/jauns/boot
