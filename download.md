---
layout: page
title: Downloads
permalink: /downloads/
---

## PELUX 2.0
As of 2018-07-02, PELUX 2.0 has been released! The docs can be found
[here](//pelux.io/software-factory/v2.0/).

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
* Version number: 2.0
* Yocto release: rocko
* Qt version: 5.10

### Changelog
* Adaptation to Yocto "Rocko" 2.4
* Integration with Qt 5.10
* [Automotive Reference Platform](https://www.youtube.com/watch?v=XVF19cC98Xs) support: hardware platform developed in-house by Luxoft
* SOTA updates using [swupdate](https://github.com/sbabic/swupdate) with the help of [meta-swupdate](https://github.com/sbabic/meta-swupdate)
* ACPI support for Intel NUC

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
* [pelux.xml](https://github.com/Pelagicore/pelux-manifests/blob/v2.0/rocko/pelux.xml)
  in PELUX Yocto Manifests repository, see below.
* The version of [PELUX Software Development
  Environment](https://github.com/Pelagicore/pelux-sde/tree/v2.0) as pointed out
  below.
* The version of [PELUX Software Factory Baseline](//pelux.io/software-factory/v2.0/) as
  pointed out below.

### Branches and tags
* PELUX Yocto Manifests
    - URL: [https://github.com/Pelagicore/pelux-manifests](https://github.com/Pelagicore/pelux-manifests)
    - branch rocko, tag v2.0/rocko
    - The same branch and tag scheme is used for the internal layers
      meta-bistro, meta-pelux and meta-template

* PELUX Software Development Environment
    - URL: [https://github.com/Pelagicore/pelux-sde/](https://github.com/Pelagicore/pelux-sde/)
    - branch PELUX-2.0
    - tag v2.0

* PELUX Software Factory Baseline
    - URL: [https://github.com/Pelagicore/software-factory](https://github.com/Pelagicore/software-factory)
    - branch PELUX-2.0
    - tag v2.0

------------------------

## Older releases (not maintained)
{% for download in site.download %}
  - <a href="{{ download.url }}">{{ download.title }}</a>
{% endfor %}

## Build from source
To build PELUX from source, read the [relevant
chapter](//pelux.io/software-factory/master/chapters/baseplatform/index.html) in
the Software Factory.
