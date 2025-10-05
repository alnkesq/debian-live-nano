# Debian-Live-Nano

## Building
* Clone git repo to `$HOME/debian-live-nano` (on Linux or WSL)
* Optionally specify a SSH public key in `customize.sh`
* Optionally rerun `remoteconf "debianlive.sshrecipe" --export-sh \\wsl.localhost\Debian\home\USER\debian-live-nano\supportFiles\customize2.sh` (using [RemoteConfigurator](https://github.com/alnkesq/RemoteConfigurator))
```bash
sudo su
cd supportFiles
./build.sh
```
* For faster rebuilds, you can comment out the actual `debootstrap` in `build.sh` and uncomment the extraction of `debootstraped.tar.gz`.

* This will generate `debian-custom.iso` in the current directory.
* On Windows: `winget install Rufus.Rufus`
* Open Rufus, select the ISO, set parameters:
  * Partition scheme: MBR
  * Persistent partition size: 0 (No persistence)
  * Target system: BIOS or UEFI
  * File system: FAT32
  * ✅ Quick format
  * ✅ Create extended label and icon files
  * Start
    * Write in ISO Image mode

The disk will boot into root automatically. You can start an X session using `startx` (right click to access the menu).

## References

Based on [nuvious/debian-live-nano](https://github.com/nuvious/debian-live-nano/), which is a fork of [dpowers86/debian-live](https://github.com/dpowers86/debian-live]), which is based on the instructions found at https://willhaley.com/blog/custom-debian-live-environment/
