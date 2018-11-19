---
layout: page
title: Downloads
permalink: /downloads/
---

## PELUX 3.0
As of 2018-11-16, PELUX 3.0 has been released! Documentation can be found
[here](//pelux.io/software-factory/PELUX-3.0/).

### Main features
 - Derived from poky
 - Support for [Raspberry PI 3](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/), [Intel NUC](https://www.intel.com/content/www/us/en/products/boards-kits/nuc.html) and [Automotive Reference Platform](https://www.youtube.com/watch?v=XVF19cC98Xs)
 - Platform Development Kit (PDK)
 - Software Development Kit (SDK)
 - 2 flavours: with and without [Qt Automotive Suite](https://www1.qt.io/qt-automotive-suite/)
 - DLT integration
 - BT integration
 - [Publicly accessible](//pelux.io/jenkins/) CI

### Metadata
* Version number: 3.0
* Yocto release: sumo
* Qt version: 5.11

### Changelog
* Adaptation to Yocto "Sumo" 2.5
* Integration with Qt 5.11
* Neptune 3 UI

### Known issues
* QtWebengine does not work in QtWayland on the Raspberry Pi 3. The browser app
  is therefore not functioning as intended.
* When running the QtAS versions of the platform, there are no ttys allocated on
  the terminal. To get a terminal, ssh to the target. If you don't know the IP
  address of your target, use arp-scan to search for it on your network.
* There is going to be minor hickups in the PELUX Software Factory Baseline that
  we have missed even though we've proofread them. Please point them out and we
  will fix them!

### Artifacts

#### Sources

|Sources for all the images| Commit hash |
| ------------------------ | ----------- |
| [Source release](https://pelux.io/artifacts/pelux/3.0/sources/source-release/) | 94fbdfba8af7ae23c6f64e7600185cfe4b19818d |

#### Images

| Hardware Platform | Variant | Size |
| ----------------- | ------- | ---- |
| Intel x86-64      | [Minimal](https://pelux.io/artifacts/pelux/3.0/binaries/intel/core-image-pelux-minimal-dev-intel-corei7-64.wic) <br> [Qt Auto Neptune](https://pelux.io/artifacts/pelux/3.0/binaries/intel/core-image-pelux-qtauto-neptune-dev-intel-corei7-64.wic) | 3.9 Gb <br> 5.5 Gb |
| Automotive Reference Platform | [Minimal](https://pelux.io/artifacts/pelux/3.0/binaries/arp/core-image-pelux-minimal-dev-arp.wic) <br> [Qt Auto Neptune](https://pelux.io/artifacts/pelux/3.0/binaries/arp/core-image-pelux-qtauto-neptune-dev-arp.wic)  | 3.9 Gb <br> 5.5 Gb |
| Raspberry Pi 3    | [Minimal]() <br> [Qt Auto Neptune](https://pelux.io/artifacts/pelux/3.0/binaries/rpi3/core-image-pelux-qtauto-neptune-dev-raspberrypi3.rootfs.rpi-sdimg) | Gb <br> 1.6 Gb |
| Qemu              | [Minimal](https://pelux.io/artifacts/pelux/3.0/binaries/qemu/core-image-pelux-minimal-dev-qemux86-64.rootfs.ext4) | 1.1 Gb |

#### SDK

| Hardware Platform | Size |
| ----------------- | ---- |
| [Intel x86-64](https://pelux.io/artifacts/pelux/3.0/binaries/intel/pelux-glibc-x86_64-core-image-pelux-qtauto-neptune-dev-corei7-64-toolchain-3.0.sh) | 2.1 Gb |
| [Automotive Reference Platform](https://pelux.io/artifacts/pelux/3.0/binaries/arp/pelux-glibc-x86_64-core-image-pelux-qtauto-neptune-dev-corei7-64-toolchain-3.0.sh) | 2.1 Gb |
| [Raspberry Pi 3]() | |

* These release notes.
* [pelux.xml](https://github.com/Pelagicore/pelux-manifests/blob/v3.0/sumo/pelux.xml)
  in PELUX Yocto Manifests repository, see below.
* The version of [PELUX Software Development
  Environment](https://github.com/Pelagicore/pelux-sde/tree/v3.0) as pointed out below.
* The version of [PELUX Software Factory Baseline](//pelux.io/software-factory/PELUX-3.0/) as
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

* PELUX Software Factory Baseline
    - URL: [https://github.com/Pelagicore/software-factory](https://github.com/Pelagicore/software-factory)
    - branch PELUX-3.0
    - tag v3.0

------------------------

## Older releases
{% for download in site.download %}
  - <a href="{{ download.url }}">{{ download.title }}</a>
{% endfor %}

## Build from source
To build PELUX from source, read the [relevant
chapter](//pelux.io/software-factory/PELUX-3.0/chapters/baseplatform/index.html) in
the Software Factory.
