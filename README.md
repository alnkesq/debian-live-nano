# Debian-Live-Nano

## Building
* Clone git repo to `$HOME/debian-live-nano` (on Linux or WSL)
* Optionally specify a SSH public key in `customize.sh`
* Optionally rerun `remoteconf "debianlive.sshrecipe" --export-sh \\wsl.localhost\Debian\home\USER\debian-live-nano\supportFiles\customize2.sh` (using [RemoteConfigurator](https://github.com/alnkesq/RemoteConfigurator))


## References

Based on [nuvious/debian-live-nano](https://github.com/nuvious/debian-live-nano/), which is a fork of [dpowers86/debian-live](https://github.com/dpowers86/debian-live]), which is based on the instructions found at https://willhaley.com/blog/custom-debian-live-environment/
