---
layout: page
title: Releases
permalink: /releases/
---

## PELUX 3.0
As of 2018-11-16, PELUX 3.0 has been released! Documentation can be found
[here](//pelux.io/software-factory/PELUX-3.0/).

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
* Version number: 3.0
* Yocto release: sumo
* Qt version: 5.11

### Changelog
* Adaptation to Yocto "Sumo" 2.5
* Integration with Qt 5.11
* Neptune 3 UI

### Known issues
* When running the QtAS versions of the platform, there are no ttys allocated on
  the terminal. To get a terminal, ssh to the target. If you don't know the IP
  address of your target, use arp-scan to search for it on your network. You can
  also select the Qt button at the bottom right corner of the home screen and
  scroll down to see the IP address.
* Rasperry Pi 3 (Qt Auto Neptune variant):
  - There are widgets and applications which are not functional. A workaround
    is to force the UI into single process mode. Add argument
    ```--force-single-process``` to neptune3-ui in the unit file for the neptune
    service. You can either edit source file
    ```sources/meta-pelux/layers/b2qt/recipes-qt/automotive/neptune3-ui/neptune.service```
    before building the image, or login to target via ssh and edit file
    ```/lib/systemd/system/neptune.service``` followed by a reboot.
  - The Neptune 3 UI is not running as smoothly as the former Neptune UI on
    Rasperry Pi 3, but on NUC it's not an issue.


### Artifacts

#### Sources

|Sources for all the images| Commit hash |
| ------------------------ | ----------- |
| [Source release](https://pelux.io/artifacts/pelux/3.0/sources/source-release/) | 94fbdfba8af7ae23c6f64e7600185cfe4b19818d |

#### Images

| Hardware Platform | Variant | Size |
| ----------------- | ------- | ---- |
| Intel x86-64      | [Minimal](https://pelux.io/artifacts/pelux/3.0/binaries/intel/core-image-pelux-minimal-dev-intel-corei7-64.wic) <br> [Qt Auto Neptune](https://pelux.io/artifacts/pelux/3.0/binaries/intel/core-image-pelux-qtauto-neptune-dev-intel-corei7-64.wic) | 3.9 GB <br> 5.5 GB |
| Automotive Reference Platform | [Minimal](https://pelux.io/artifacts/pelux/3.0/binaries/arp/core-image-pelux-minimal-dev-arp.wic) <br> [Qt Auto Neptune](https://pelux.io/artifacts/pelux/3.0/binaries/arp/core-image-pelux-qtauto-neptune-dev-arp.wic)  | 3.9 GB <br> 5.5 GB |
| Raspberry Pi 3    | [Minimal](https://pelux.io/artifacts/pelux/3.0/binaries/rpi3/core-image-pelux-minimal-dev-raspberrypi3-20181119145443.rootfs.rpi-sdimg) <br> [Qt Auto Neptune](https://pelux.io/artifacts/pelux/3.0/binaries/rpi3/core-image-pelux-qtauto-neptune-dev-raspberrypi3.rootfs.rpi-sdimg) (with known limitations) | 1.1 GB <br> 1.6 GB |
| Qemu              | [Minimal](https://pelux.io/artifacts/pelux/3.0/binaries/qemu/core-image-pelux-minimal-dev-qemux86-64.rootfs.ext4) | 1.1 GB |

#### SDK

| Hardware Platform | Size |
| ----------------- | ---- |
| [Intel x86-64](https://pelux.io/artifacts/pelux/3.0/binaries/intel/pelux-glibc-x86_64-core-image-pelux-qtauto-neptune-dev-corei7-64-toolchain-3.0.sh) | 2.1 GB |
| [Automotive Reference Platform](https://pelux.io/artifacts/pelux/3.0/binaries/arp/pelux-glibc-x86_64-core-image-pelux-qtauto-neptune-dev-corei7-64-toolchain-3.0.sh) | 2.1 GB |
| [Raspberry Pi 3](https://pelux.io/artifacts/pelux/3.0/binaries/rpi3/pelux-glibc-x86_64-core-image-pelux-qtauto-neptune-dev-cortexa7hf-neon-vfpv4-toolchain-3.0.sh) | 2.0 GB |

* These release notes.
* [pelux.xml](https://github.com/Pelagicore/pelux-manifests/blob/v3.0/sumo/pelux.xml)
  in PELUX Yocto Manifests repository, see below.
* The version of [PELUX Software Development
  Environment](https://github.com/Pelagicore/pelux-sde/tree/v3.0) as pointed out below.
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
{% for download in site.download %}
  - <a href="{{ download.url }}">{{ download.title }}</a>
{% endfor %}

## Build from source
To build PELUX from source, read the [relevant
chapter](//pelux.io/software-factory/PELUX-3.0/chapters/baseplatform/index.html) in
the Development Handbook.
