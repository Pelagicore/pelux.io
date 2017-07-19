---
layout: post
title:  "Why GENIVI DLT as a logging aggregator?"
date:   2017-06-07 14:48:00 +0200
categories: genivi
author: Richard Pannek
---

We decided on DLT as the logging aggregator, this ended up in the architecture document:

> PELUX shall use GENIVI DLT as a logging aggregator point. The remote access and filtering capabilities of the DLT Viewer combined with the ability to aggregate logs from other sources fulfill the use-cases. The native C bindings, the Qt bindings from QtGeniviExtras and ivi-logging for non-Qt C++ components make it accessible from the PELUX components.

We have been using DLT in previous projects and it ended up being very useful.

You can easily connect the hardware to the network and once you know the IP address you can use the DLT Viewer on your host system, which is really useful if, for example, are sitting in the car and trying to debug something with your laptop.

The viewer has advanced filtering capabilities. You can filter for your own application, for a specific part of it, and free text too. The docs can be exported in one place and viewed in the viewer on a different computer. DLT makes it fairly easy to aggregate logs from other sources like journald, stdout/err, and there are bindings for Qt/QML, C and C++.

We might want to research a bit if it would be worth to write a DLT wrapper for glib too.

## Links

- [Diagnostic Log and Trace](https://at.projects.genivi.org/wiki/display/PROJ/Diagnostic+Log+and+Trace)
- [dlt-daemon](https://github.com/GENIVI/dlt-daemon)
- [dlt-viewer](https://github.com/GENIVI/dlt-viewer)
- [ivi-logging](https://github.com/Pelagicore/ivi-logging)
- [QtGeniviExtras](https://doc.qt.io/QtGENIVIExtras/)
