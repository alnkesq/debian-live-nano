# Debian-Live-Nano

Builds a Debian Live (stable) x86-64 ISO monthly using GitHub Actions.

## Default Password

The default username and password is root / toor.

## Install

- Burn ISO to CD
- Flash iso to USB with tools like [balenaEtcher](https://etcher.balena.io/), [rufus](https://rufus.ie/en/), or multi
  boot tools like [ventoy](https://www.ventoy.net/en/index.html)

## Customization

Use the `./build.sh` script or `./build.ps1` script in the project root to build an ISO from scratch. Requires docker.

- Create supportFiles/customize.sh and add logic as desired to customize this build (add packages, set locale, etc)
- Use iso with tools like [cubic](https://github.com/PJ-Singh-001/Cubic) to build your own distro

## References

This image was built based from the instructions found at https://willhaley.com/blog/custom-debian-live-environment/

This repo was forked from [dpowers86/debian-live](https://github.com/dpowers86/debian-live]) authored by
[dpowers86](https://github.com/dpowers86).
