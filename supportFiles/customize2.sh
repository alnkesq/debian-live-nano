#!/usr/bin/env bash
# Generated via RemoteConfigurator
set -e
cd /root
apt install --no-install-recommends -y libicu76
curl -fsSL https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100-rc.1.25451.107/dotnet-sdk-10.0.100-rc.1.25451.107-linux-x64.tar.gz -o dotnet-sdk.tar.gz
rm -rf /root/dotnet
mkdir -p /root/dotnet
tar zxf dotnet-sdk.tar.gz -C /root/dotnet
rm dotnet-sdk.tar.gz
ln -f -s /root/dotnet/dotnet /bin/dotnet
chmod +x /bin/dotnet
sh -c "  echo \"\$2\" >> \"\$1\" " _ /root/.bashrc "export PATH=\$PATH:/root/.dotnet/tools"
sh -c "  echo \"\$2\" >> \"\$1\" " _ /root/.bashrc "export DOTNET_ROOT=/root/dotnet"
sh -c "  echo \"\$2\" >> \"\$1\" " _ /root/.bashrc "export DOTNET_CLI_TELEMETRY_OPTOUT=1"
rm /root/dotnet/templates/10.0.0-rc.1.25451.107/microsoft.dotnet.web.*
curl -fsSL https://github.com/duckdb/duckdb/releases/download/v1.4.0/duckdb_cli-linux-amd64.zip -o duckdb-cli.zip
curl -fsSL https://github.com/duckdb/duckdb/releases/download/v1.4.0/libduckdb-linux-amd64.zip -o libduckdb.zip
unzip -o duckdb-cli.zip -d duckdb
unzip -o libduckdb.zip -d duckdb
rm libduckdb.zip
rm duckdb-cli.zip
ln -f -s /root/duckdb/duckdb /bin/duckdb
curl -fsSL https://github.com/PowerShell/PowerShell/releases/download/v7.4.5/powershell-7.4.5-linux-x64.tar.gz -o powershell.tar.gz
mkdir -p /root/powershell
tar zxf powershell.tar.gz -C /root/powershell
rm powershell.tar.gz
chmod +x /root/powershell/pwsh
ln -f -s /root/powershell/pwsh /bin/pwsh
chmod +x /bin/pwsh
sh -c "  echo \"\$2\" >> \"\$1\" " _ /root/.bashrc "export POWERSHELL_TELEMETRY_OPTOUT=1"
curl -fsSL https://github.com/rclone/rclone/releases/download/v1.70.3/rclone-v1.70.3-linux-amd64.zip -o rclone.zip
unzip -j -o rclone.zip -d rclone
rm rclone.zip
ln -f -s /root/rclone/rclone /bin/rclone
apt install --no-install-recommends -y udisks2 ripgrep curl mercurial xorg openbox obconf xfe mousepad w3m fuse
rm /root/duckdb/libduckdb_static.a
rm -rf /root/dotnet/sdk/10.0.100-rc.1.25451.107/DotnetTools/dotnet-format
rm -rf /root/dotnet/sdk/10.0.100-rc.1.25451.107/DotnetTools/dotnet-watch
rm -rf /root/dotnet/sdk/10.0.100-rc.1.25451.107/FSharp
sh -c "  echo \"\$2\" >> \"\$1\" " _ /root/.xinitrc "exec openbox-session"
rm /usr/lib/x86_64-linux-gnu/dri/crocus_dri.so
rm /usr/lib/x86_64-linux-gnu/dri/i915_dri.so
rm /usr/lib/x86_64-linux-gnu/dri/r300_dri.so
rm /usr/lib/x86_64-linux-gnu/dri/radeonsi_dri.so
rm /usr/lib/x86_64-linux-gnu/dri/virtio_gpu_dri.so
rm /usr/lib/x86_64-linux-gnu/dri/zink_dri.so
rm /usr/lib/x86_64-linux-gnu/dri/d3d12_dri.so
rm /usr/lib/x86_64-linux-gnu/dri/iris_dri.so
rm /usr/lib/x86_64-linux-gnu/dri/nouveau_dri.so
rm /usr/lib/x86_64-linux-gnu/dri/r600_dri.so
rm /usr/lib/x86_64-linux-gnu/dri/vmwgfx_dri.so
apt purge exim4-base nfs-common rpcbind -y
apt-get -y purge firmware-netronome firmware-qcom-soc firmware-nvidia-gsp nvidia-tesla-470-kernel-support firmware-nvidia-tesla-gsp firmware-amd-graphics firmware-sof-signed firmware-atheros firmware-libertas raspi-firmware
rm -rf /usr/share/doc/*
apt-get clean
apt-get autoclean
rm -rf /var/lib/apt/*
rm -rf /var/cache/apt/*
rm /customize.sh
rm /customize2.sh
