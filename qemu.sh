#!/bin/sh
if [ "$1" != "raw" ]; then
cp filesystem.img filesystem.img.mod
qemu-system-x86_64 -m 512 -drive file=filesystem.img.mod,if=virtio,format=raw,index=0,media=disk -serial stdio -cpu max
else
qemu-system-x86_64 -m 512 -drive file=filesystem.img,if=virtio,format=raw,index=0,media=disk -serial stdio -cpu max
fi
