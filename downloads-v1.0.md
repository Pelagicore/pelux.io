---
layout: page
title: Old releases
permalink: /downloads/v1.0/
---

## PELUX 1.0
PELUX 1.0 was released on 2018-01-12. The docs can be found
[here](//pelux.io/software-factory/v1.0/).

### Main features
 - Derived from poky
 - Support for [Raspberry PI 3](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/) and [Intel NUC](https://www.intel.com/content/www/us/en/products/boards-kits/nuc.html)
 - Platform Development Kit (PDK)
 - Software Development Kit (SDK)
 - 2 flavours: with and without [Qt Automotive Suite](https://www1.qt.io/qt-automotive-suite/)
 - DLT integration
 - BT integration
 - [Publicly accessible](//pelux.io/jenkins/) CI

### Metadata
* Version number: 1.0
* Yocto release: morty and pyro
* Qt version: 5.9.3

### Changelog
This is the initial release of PELUX.

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
* These release notes.
* [pelux.xml](https://github.com/Pelagicore/pelux-manifests/blob/v1.0/pyro/pelux.xml)
  in PELUX Yocto Manifests repository, see below.
* The version of [PELUX Software Development
  Environment](https://github.com/Pelagicore/pelux-sde/tree/v1.0) as pointed out
  below.
* The version of [PELUX Software Factory Baseline](//pelux.io/software-factory/v1.0/) as
  pointed out below.

### Branches and tags
* PELUX Yocto Manifests
    - URL: [https://github.com/Pelagicore/pelux-manifests](https://github.com/Pelagicore/pelux-manifests)
    - branch morty, tag v1.0/morty
    - branch pyro, tag v1.0/pyro
    - The same branch and tag scheme is used for the internal layers
      meta-bistro, meta-pelux and meta-template

* PELUX Software Development Environment
    - URL: [https://github.com/Pelagicore/pelux-sde/](https://github.com/Pelagicore/pelux-sde/)
    - branch PELUX-1.0
    - tag v1.0

* PELUX Software Factory Baseline
    - URL: [https://github.com/Pelagicore/software-factory](https://github.com/Pelagicore/software-factory)
    - branch PELUX-1.0
    - tag v1.0

------------------------

## Build from source
To build PELUX from source, read the [relevant
chapter](//pelux.io/software-factory/master/chapters/baseplatform/index.html) in
the Software Factory.
