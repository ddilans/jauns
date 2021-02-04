#!/bin/sh
BUILD_DIR="$PWD"
cd /mnt/jauns
cat "${BUILD_DIR}/list" | cpio -o -H newc > "${BUILD_DIR}/initramfs.cpio"
cd "$BUILD_DIR"
gzip < initramfs.cpio > initramfs.cpio.gz
