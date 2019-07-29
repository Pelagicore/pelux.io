---
layout: page
title: Releases
permalink: /releases/
---

## PELUX 4.0
As of 2019-07-29, PELUX 4.0 has been released! Documentation can be found
[here](//pelux.io/software-factory/PELUX-4.0/)

### Main features
 - Support for [Raspberry Pi 3B+](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/),
   [Intel NUC](https://www.intel.com/content/www/us/en/products/boards-kits/nuc.html)
   and [Automotive Reference Platform](https://www.youtube.com/watch?v=XVF19cC98Xs)
 - Software Development Kit (SDK)
 - 2 flavours: with and without [Qt Automotive Suite](https://www1.qt.io/qt-automotive-suite/)
 - [Diagnostic Log and Trace (DLT)](https://github.com/GENIVI/dlt-daemon)
   supported. Connect [dlt-viewer](https://github.com/GENIVI/dlt-viewer) to
   target and view the logs.
 - [Publicly accessible](//pelux.io/jenkins/) CI server

### Metadata
* Version number: 4.0
* Yocto release: thud
* Qt version: 5.13

### Changelog
* Adaptation to Yocto "Thud" 2.6
* Integration with Qt AS 5.13
* Experimental [Mopidy playback plugin](https://github.com/Pelagicore/qtivi-mopidy-plugin) for Qt IVI
* [Connectivity Manager](https://github.com/Pelagicore/connectivity-manager) for managing network connectivity
* Alexa SDK integration
* Automated flashing with MuxPi

### Known issues
* When running the QtAS versions of the platform, there are no ttys allocated on
  the terminal. To get a terminal, ssh to the target. If you don't know the IP
  address of your target, use arp-scan to search for it on your network. You can
  also select the Qt button at the bottom right corner of the home screen and
  scroll down to see the IP address.
* Rasperry Pi 3 (Qt Auto Neptune variant):
  - The Neptune 3 UI is not running as smoothly as the former Neptune UI on
    Rasperry Pi 3, but on NUC it's not an issue.

### Artifacts

#### Images

| Hardware Platform | Variant | Size |
| ----------------- | ------- | ---- |
| Intel x86-64      | [Minimal](https://pelux.io/artifacts/pelux/4.0/binaries/intel/core-image-pelux-minimal-intel-corei7-64.wic) <br> [Qt Auto Neptune](https://pelux.io/artifacts/pelux/4.0/binaries/intel/core-image-pelux-qtauto-neptune-intel-corei7-64.wic) | 7.9 GB <br> 7.9 GB |
| ARP               | [Minimal](https://pelux.io/artifacts/pelux/4.0/binaries/arp/core-image-pelux-minimal-arp.wic) <br> [Qt Auto Neptune](https://pelux.io/artifacts/pelux/4.0/binaries/arp/core-image-pelux-qtauto-neptune-arp.wic) | 7.9 GB <br> 7.9 GB |
| Raspberry Pi 3    | [Minimal](https://pelux.io/artifacts/pelux/4.0/binaries/rpi3/core-image-pelux-minimal-raspberrypi3.wic) <br> [Qt Auto Neptune](https://pelux.io/artifacts/pelux/4.0/binaries/rpi3/core-image-pelux-qtauto-neptune-raspberrypi3.wic) | 4.4 GB <br> 3.8 GB |
| QEMU              | [Minimal](https://pelux.io/artifacts/pelux/4.0/binaries/qemu/core-image-pelux-minimal-dev-qemux86-64.ext4) | 1.1 GB |

#### SDK

| Hardware Platform | Size |
| ----------------- | ---- |
| [Intel x86-64](https://pelux.io/artifacts/pelux/4.0/binaries/intel/pelux-glibc-x86_64-core-image-pelux-qtauto-neptune-corei7-64-toolchain-4.0-thud.sh) | 3.0 GB |
| [Automotive Reference Platform](https://pelux.io/artifacts/pelux/4.0/binaries/arp/pelux-glibc-x86_64-core-image-pelux-qtauto-neptune-corei7-64-toolchain-4.0-thud.sh) | 3.0 GB |
| [Raspberry Pi 3](https://pelux.io/artifacts/pelux/4.0/binaries/rpi3/pelux-glibc-x86_64-core-image-pelux-qtauto-neptune-cortexa7t2hf-neon-vfpv4-toolchain-4.0-thud.sh) | 2.7 GB |

* These release notes.
* [pelux.xml](https://github.com/Pelagicore/pelux-manifests/blob/thud/pelux.xml)
  in PELUX Yocto Manifests repository, see below.
* The version of [PELUX Software Development Environment](https://github.com/Pelagicore/pelux-sde/tree/PELUX-4.0)
  as pointed out below.
* The version of [PELUX Development Handbook](//pelux.io/software-factory/PELUX-4.0/)
  as pointed out below.

### Branches and tags
* PELUX Yocto Manifests
    - URL: [https://github.com/Pelagicore/pelux-manifests](https://github.com/Pelagicore/pelux-manifests)
    - branch thud, tag v4.0-thud
    - The same branch and tag scheme is used for the internal layers
      meta-bistro, meta-pelux and meta-template

* PELUX Software Development Environment
    - URL: [https://github.com/Pelagicore/pelux-sde/](https://github.com/Pelagicore/pelux-sde/)
    - branch PELUX-4.0
    - tag v4.0

* PELUX Development Handbook
    - URL: [https://github.com/Pelagicore/software-factory](https://github.com/Pelagicore/software-factory)
    - branch PELUX-4.0

------------------------

## Older releases
{% for release in site.release %}
  - <a href="{{ release.url }}">{{ release.title }}</a>
{% endfor %}

## Build from source
To build PELUX from source, read the [relevant chapter](//pelux.io/software-factory/PELUX-4.0/chapters/baseplatform/index.html)
in the Development Handbook.
