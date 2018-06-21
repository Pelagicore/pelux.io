---
layout: post
title:  "QtWebEngine on the Raspberry Pi 3 in a Wayland client"
date:   2018-04-04 19:00:00 +0100
categories: yocto qt webengine rpi wayland
author: Florent Revest
---

[Netpune UI's](https://doc.qt.io/NeptuneUI/) Browser
Application, embedded in PELUX Qt Automotive version by default, is written in
QML using QtWebEngine components.

The Qt framework makes it very easy to create modern apps that run virtually
anywhere. Its modules offer high-level APIs that hide the complexity of
hardware acceleration on various platforms and scenarios. Whether we are
talking about QtWebEngine, QtQuick, QtWayland or QPAs: those modules tend to
work in perfect harmony for a smooth developer experience... *Until they don't!*

As part of the PELUX development, it has been observed that the Neptune UI's
Browser app wouldn't show web pages on one specific platform: the Raspberry Pi.
Trying out the browsers in different conditions (for example with a different
QPA such as the eglfs backend) revealed that QtWebEngine would stop working
when ran as a Wayland client on Broadcom GPUs.

We eventually had to get our hands dirty and dig into Qt's codebase to debug
this issue. It turned out that QtWebEngine relies on private QtWayland APIs to
access platform-specific EGL structures needed for hardware acceleration of
Blink. Unfortunately, those APIs were missing from the brcm-egl wayland client
integration.

A patch has been written down to expose the required EGL structures to
QtWayland clients and submitted upstream to the [Qt's
gerrit](https://codereview.qt-project.org/#/c/225465/).

This patch effectively solves QtWebEngine's display when ran as a C++ Qt
Widget. However, QtWebEngine QtQuick items still fail to show anything on
screen and our Neptune UI's Browser app isn't yet usable on this platform.

This bug, happening in the very specific combination of QtQuick, QtWebEngine,
QtWayland and a BRCM GPU has been [reported
upstream](https://bugreports.qt.io/browse/QTBUG-67415) and is now being
investigated by the Qt community.

Let's take this opportunity to appreciate the subtle inner workings of Qt and
celebrate the quality of this great open-source framework!
