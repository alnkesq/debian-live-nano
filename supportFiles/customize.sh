#!/bin/bash
set -e

mv -v /etc/resolv.conf /etc/resolv-after-systemd.conf
mv -v /etc/resolv-external.conf /etc/resolv.conf

#  --no-install-recommends
apt-get install -y ntfs-3g dislocker nano curl wget util-linux openssh-server htop 7zip unzip ca-certificates tmux mercurial git libicu72 ripgrep


if [ ! -e /bin/7z ]; then
    ln -s /bin/7zz /bin/7z
fi


mkdir /etc/systemd/system/getty@tty1.service.d -p

cat <<'EOF' > /etc/systemd/system/getty@tty1.service.d/override.conf
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin root --noclear %I $TERM
EOF

mkdir -p /root/.ssh
# echo "ssh-ed25519 yoursshpubkeyhere machinename" > /root/.ssh/authorized_keys

cat <<'EOF' > /etc/ssh/sshd_config 
Subsystem sftp internal-sftp
PasswordAuthentication no
EOF

systemctl enable ssh


