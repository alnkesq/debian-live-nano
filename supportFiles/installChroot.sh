#!/bin/bash
# This shell script is executed inside the chroot
set -e

echo Set hostname
echo "debian-live" > /etc/hostname

# Set as non-interactive so apt does not prompt for user input
export DEBIAN_FRONTEND=noninteractive

echo Install security updates and apt-utils
apt-get update
apt-get -y install apt-utils
apt-get -y upgrade

# Run customzations before clean
/bin/bash /customize.sh

echo Install packages
apt-get install -y --no-install-recommends linux-image-amd64 live-boot systemd-sysv systemd-resolved

echo Clean apt post-install
apt-get clean

echo Enable systemd-networkd as network manager
systemctl enable systemd-networkd
echo Enable systemd-resolved as dns manager
systemctl enable systemd-resolved

echo Set root password
echo "root:toor" | chpasswd

echo Remove machine-id
rm /etc/machine-id

echo List installed packages
dpkg --get-selections|tee /packages.txt
