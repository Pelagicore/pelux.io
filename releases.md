---
layout: page
title: Releases
permalink: /releases/
---

## PELUX 3.1
As of 2019-03-29, PELUX 3.1 has been released! Documentation can be found
[here](//pelux.io/software-factory/PELUX-3.0/) (NOTE: link points to docs for 3.0 as they were not changed).

### Main features
 - Derived from poky
 - Support for [Raspberry Pi 3B+](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/), [Intel NUC](https://www.intel.com/content/www/us/en/products/boards-kits/nuc.html) and [Automotive Reference Platform](https://www.youtube.com/watch?v=XVF19cC98Xs)
 - Software Development Kit (SDK)
 - 2 flavours: with and without [Qt Automotive Suite](https://www1.qt.io/qt-automotive-suite/)
 - [Diagnostic Log and Trace (DLT)](https://github.com/GENIVI/dlt-daemon)
   supported. Connect [dlt-viewer](https://github.com/GENIVI/dlt-viewer) to
   target and view the logs.
 - Connman network manager with Ethernet, WiFi and Bluetooth technologies
 - [Publicly accessible](//pelux.io/jenkins/) CI server

### Metadata
* Version number: 3.1
* Yocto release: sumo
* Qt version: 5.12

### Changelog
* Adaptation to latest meta-layers
* Integration with Qt AS 5.12
* Added workaround for issues seen in Neptune 3 UI on Raspberry Pi

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

#### Sources

|Sources for all the images| Commit hash |
| ------------------------ | ----------- |
| [Source release](https://pelux.io/artifacts/pelux/3.1/sources/source-release/) | 6266e8bcb8247d54b32119eefc72e93687b693be |

#### Images

| Hardware Platform | Variant | Size |
| ----------------- | ------- | ---- |
| Intel x86-64      | [Minimal](https://pelux.io/artifacts/pelux/3.1/binaries/intel/core-image-pelux-minimal-dev-intel-corei7-64.wic) <br> [Qt Auto Neptune](https://pelux.io/artifacts/pelux/3.1/binaries/intel/core-image-pelux-qtauto-neptune-dev-intel-corei7-64.wic) | 3.9 GB <br> 5.4 GB |
| ARP               | [Minimal](https://pelux.io/artifacts/pelux/3.1/binaries/arp/core-image-pelux-minimal-dev-arp.wic) <br> [Qt Auto Neptune](https://pelux.io/artifacts/pelux/3.1/binaries/arp/core-image-pelux-qtauto-neptune-dev-arp.wic)  | 3.9 GB <br> 5.4 GB |
| Raspberry Pi 3    | [Minimal](https://pelux.io/artifacts/pelux/3.1/binaries/rpi3/core-image-pelux-minimal-dev-raspberrypi3.rpi-sdimg) <br> [Qt Auto Neptune](https://pelux.io/artifacts/pelux/3.1/binaries/rpi3/core-image-pelux-qtauto-neptune-dev-raspberrypi3.rpi-sdimg) (with known limitations) | 1.1 GB <br> 1.6 GB |
| Qemu              | [Minimal](https://pelux.io/artifacts/pelux/3.1/binaries/qemu/core-image-pelux-minimal-dev-qemux86-64.ext4) | 1.1 GB |

#### SDK

| Hardware Platform | Size |
| ----------------- | ---- |
| [Intel x86-64](https://pelux.io/artifacts/pelux/3.1/binaries/intel/pelux-glibc-x86_64-core-image-pelux-qtauto-neptune-dev-corei7-64-toolchain-3.1.sh) | 2.2 GB |
| [Automotive Reference Platform](https://pelux.io/artifacts/pelux/3.1/binaries/arp/pelux-glibc-x86_64-core-image-pelux-qtauto-neptune-dev-corei7-64-toolchain-3.1.sh) | 2.2 GB |
| [Raspberry Pi 3](https://pelux.io/artifacts/pelux/3.1/binaries/rpi3/pelux-glibc-x86_64-core-image-pelux-qtauto-neptune-dev-cortexa7hf-neon-vfpv4-toolchain-3.1.sh) | 1.7 GB |

* These release notes.
* [pelux.xml](https://github.com/Pelagicore/pelux-manifests/blob/v3.1/sumo/pelux.xml)
  in PELUX Yocto Manifests repository, see below.
* The version of [PELUX Software Development
  Environment](https://github.com/Pelagicore/pelux-sde/tree/PELUX-3.1) as pointed out below.
* The version of [PELUX Development Handbook](//pelux.io/software-factory/PELUX-3.0/) as
  pointed out below.

### Branches and tags
* PELUX Yocto Manifests
    - URL: [https://github.com/Pelagicore/pelux-manifests](https://github.com/Pelagicore/pelux-manifests)
    - branch sumo, tag v3.0/sumo
    - The same branch and tag scheme is used for the internal layers
      meta-bistro, meta-pelux and meta-template

* PELUX Software Development Environment
    - URL: [https://github.com/Pelagicore/pelux-sde/](https://github.com/Pelagicore/pelux-sde/)
    - branch PELUX-3.0
    - tag v3.0

* PELUX Development Handbook
    - URL: [https://github.com/Pelagicore/software-factory](https://github.com/Pelagicore/software-factory)
    - branch PELUX-3.0
    - tag v3.0

------------------------

## Older releases
{% for release in site.release %}
  - <a href="{{ release.url }}">{{ release.title }}</a>
{% endfor %}

## Build from source
To build PELUX from source, read the [relevant
chapter](//pelux.io/software-factory/PELUX-3.0/chapters/baseplatform/index.html) in
the Development Handbook.
