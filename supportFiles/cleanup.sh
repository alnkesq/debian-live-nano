#!/usr/bin/bash

set +e
umount /root/LIVE_BOOT/chroot/proc
umount /root/LIVE_BOOT/chroot/dev
umount /root/LIVE_BOOT/chroot/sys

set -e
rm -rf --one-file-system /root/LIVE_BOOT/chroot/
rm -rf --one-file-system /root/LIVE_BOOT/staging/
rm -rf --one-file-system /root/LIVE_BOOT/tmp/
