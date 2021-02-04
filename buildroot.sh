#!/bin/sh
BUILD_DIR="$PWD"
cd /mnt/jauns
mkdir bin dev etc proc sys boot pkgs run
mkdir dev/pts
cp "${BUILD_DIR}/busybox-1.33.0/busybox" /mnt/jauns/bin/busybox
cd bin && for t in $(./busybox --list); do ln -s busybox $t; done
cd /mnt/jauns
ln -s bin/busybox init
cp "${BUILD_DIR}/xstow-1.0.2/src/xstow-static" /mnt/jauns/bin/xstow
cp -r "${BUILD_DIR}"/files/* /mnt/jauns
cd /mnt/jauns/dev
mknod tty1 c 4 1
mknod tty2 c 4 2
mknod tty3 c 4 3
mknod tty4 c 4 4
cd "${BUILD_DIR}"
