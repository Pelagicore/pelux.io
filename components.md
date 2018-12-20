---
layout: page
title: Components
permalink: /components/
---

## PELUX Yocto layers

The entry point to the PELUX Yocto/OE build system is the
[pelux-manifests](https://github.com/Pelagicore/pelux-manifests) repository. It
contains the information on the layers that are used for different flavours of
the project build.

OSS layers:

* [poky](https://git.yoctoproject.org/cgit.cgi/poky) - Poky Build Tool and
  Metadata
* [meta-openembedded](http://git.openembedded.org/meta-openembedded/) -
  Collection of OpenEmbedded layers
* [meta-ivi](https://github.com/GENIVI/meta-ivi) - Layer for InVehicle
  Infotainment software
* [meta-swupdate](https://github.com/sbabic/meta-swupdate) - Recipes to support
  deployment of Yocto's images based on swupdate project
* [meta-virtualization](https://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualization/) -
  Layer enabling hypervisor, virtualization tool stack, and cloud support
* [meta-qt5](http://code.qt.io/cgit/yocto/meta-qt5.git/) - Vendor branches of
  [https://github.com/meta-qt5/meta-qt5](https://github.com/meta-qt5/meta-qt5)
* [meta-boot2qt](http://code.qt.io/cgit/yocto/meta-boot2qt.git/) - Layer for
  Boot2Qt
* [meta-arp](https://github.com/Pelagicore/meta-arp/) - Layer providing BSP
  for Automotive Reference Platform
* [meta-intel](https://git.yoctoproject.org/cgit.cgi/meta-intel/) - Layer
  containing Intel hardware support metadata
* [meta-raspberrypi](https://git.yoctoproject.org/cgit.cgi/meta-raspberrypi/) -
  Hardware specific BSP overlay for the RaspberryPi device

Layers maintained by the PELUX project:

* [meta-pelux](https://github.com/pelagicore/meta-pelux) - Contains the
  reference integration platform and the PELUX image recipes.
* [meta-bistro](https://github.com/pelagicore/meta-bistro) - Adds IVI specific
  components and additions to relevant OSS components.
* [meta-template](https://github.com/pelagicore/meta-template) - Contains template
  recipes and components that can be used as examples when starting your own R&D
  work.

## Development Handbook

The [Development Handbook](//pelux.io/software-factory/) contains most of
the documentation around how to use PELUX and how to set up a new project.

## SoftwareContainer

The [SoftwareContainer](https://github.com/Pelagicore/softwarecontainer) is a
framework to manage and contain applications created and vetted by third party
developers in an automotive setting. A launcher (e.g. a UI) sends a
signal to the SoftwareContainer to start a new Container. It can then configure
the Container using a documented [JSON](https://www.json.org/) format and can
launch processes inside the Container. This can then be used to isolate
applications from each other and make sure they are not interfering and to
limit/manage resources available to the applications.

## Qt Automotive Suite

As a reference UI, PELUX integrates components from
[Qt Automotive Suite](https://www.qt.io/qt-automotive-suite/) which is part of
the Qt Project. It is a collection of software components and tools to enable
development of In-Vehicle Infotainment (IVI) systems. The vital components used
in PELUX can be found below.

### QtApplicationManager

The [QtApplicationManager](https://doc.qt.io/QtApplicationManager/) provides the
infrastructure for modern multi-process IVI architectures using Wayland
composition and input event handling, while at the same time having the option
to scale down to single-process setups for mid-range product variants, or for
convenient native development on host platforms without Wayland. The Qt
Application Manager supports you with app lifecycle management and isolating and
securing apps.

### QtIVI

[QtIVI](https://doc.qt.io/QtIVI/) provides additional APIs commonly needed in
automotive IVI or cluster systems. The APIs serve as a common interface between
the QML frontend and middleware services. Since those APIs, however, differ
slightly from project to project, a particular emphasis is put on easy
extensibility/adaptability. QtIVI supports development by providing
infrastructure for having multiple backends (e.g. simulation and the real
hardware). In addition, while using standard Qt logging methods, a GENIVI&reg; DLT
adapter is used in case the DLT logging backend is present on the system.

### Neptune 3 Reference Implementation

[Neptune 3 UI](https://doc.qt.io/Neptune3UI) is the Qt Automotive Suite reference UI
implementation designed for an IVI system.

