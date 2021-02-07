#!/bin/sh
cp filesystem.img filesystem.img.mod
#qemu-system-x86_64 -m 512 -drive file=filesystem.img.mod,format=raw,index=0,media=disk
qemu-system-x86_64 -m 512 -drive file=filesystem.img.mod,if=virtio,format=raw,index=0,media=disk
