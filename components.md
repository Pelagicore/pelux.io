---
layout: page
title: Components
permalink: /components/
---

## Qt Automotive Suite

[Qt Automotive Suite](https://www.qt.io/qt-automotive-suite/) is part of the Qt
Project. It is a collection of software components and tools to enable
development of In-Vehicle-Infotainment (IVI) systems. The vital components used
in PELUX can be found below.

### QtApplicationManager

The [QtApplicationManager](https://doc.qt.io/QtApplicationManager/) provides the
infrastructure for modern multi-process IVI architectures using Wayland
composition and input event handling, while at the same time having the option
to scale down to single-process setups for mid-range product variants, or for
convenient native development on host platforms without Wayland. The Qt
Application Manager supports you with app lifecylce management and isolating and
securing apps.

### QtIVI

[QtIVI](https://doc.qt.io/QtIVI/) provides additional APIs commonly needed in
automotive IVI or cluster systems. The APIs serve as a common interface between
the QML frontend and middleware services. Since those APIs however differ
slightly from project to project, a particular emphasis is put on easy
extensibility/adaptability. QtIVI supports development by providing
infrastructure for having multiple backends (e.g. simulation and the real
hardware). In addition, while using standard Qt logging methods, a GENIVI DLT
adapter is used in case the DLT logging backend is present on the system.

### Neptune Reference Implementation

[NeptuneUI](https://doc.qt.io/NeptuneUI) is the Qt Automotive Suite reference UI
implementation designed for an IVI system.

## PELUX Yocto layers

The entry point to the PELUX Yocto/OE build system is the
[pelux-manifests](https://github.com/Pelagicore/pelux-manifests) repository. It
contains the information on the layers that are used for different flavours of
the project build.

OSS layers:

* [poky](http://git.yoctoproject.org/cgit.cgi/poky)
* [meta-openembedded](http://git.openembedded.org/meta-openembedded/)
* [meta-ivi](https://github.com/GENIVI/meta-ivi)
* [meta-virtualization](https://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualization/)
* [meta-qt5](http://code.qt.io/cgit/yocto/meta-qt5.git/)
* [meta-boot2qt](http://code.qt.io/cgit/yocto/meta-boot2qt.git/)

Layers maintained by the PELUX project:

* [meta-pelux](https://github.com/pelagicore/meta-pelux) contains the base
  platform and the PELUX image recipes.
* [meta-bistro](https://github.com/pelagicore/meta-bistro) adds IVI specific
  components and additions to relevant OSS components.
* [meta-template](https://github.com/pelagicore/meta-template) conatins template
  recipes and components that can be used as examples when starting your own R&D
  work.

## Software Factory

The [Software Factory
documentation](//pelux.io/software-factory/) contains most of
the documentation around how to use PELUX and how to set up a new project.

## Software Container

[softwarecontainer](https://github.com/Pelagicore/softwarecontainer) is a
framework to manage and contain applications in an automotive setting.
