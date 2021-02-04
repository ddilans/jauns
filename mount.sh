#!/bin/sh
mkdir /mnt/jauns
partx -d -v /dev/loop0
losetup -d /dev/loop0
partx -a -v filesystem.img
mount /dev/loop0p2 /mnt/jauns
mkdir /mnt/jauns/boot
mount /dev/loop0p1 /mnt/jauns/boot
