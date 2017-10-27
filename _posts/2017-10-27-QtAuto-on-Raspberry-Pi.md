---
layout: post
title:  "Getting PELUX+QtAuto on the Raspberry Pi 3"
date:   2017-10-27 15:00:00 +0200
categories: yocto
author: Tobias Olausson
---

For a while now, we have tried to get PELUX with the [Qt Automotive
Suite](https://www1.qt.io/qt-automotive-suite/) onto a Raspberry Pi 3, to be
able to show the same flavours of PELUX on both the Intel NUC and the Pi. After
some hacking - it turns out it wasn't all that hard.

## Starting out
First, we just set `MACHINE` to "raspberrypi3" and built our PELUX image in
Yocto. We had one issue in that the graphics stack on the Pi doesn't support GBM
when we use the broadcom proprietary drivers. This meant we had disable GBM when
building Qt. After that - everything built super fine, the Pi booted fine, but
QtApplicationManager would just hang and we got no graphics output.

Our Munich office contains the maintainers for
[QtApplicationManager](https://doc.qt.io/QtApplicationManager/), so after
getting some help from them, we were able to run everything. However, this was
only in single-process mode. As it turns out, QtWayland wasn't working as nicely
as we thought.

## Wayland
[Wayland](https://wayland.freedesktop.org/) is a display protocol. Think of it
as X11, but much better. QtApplicationManager serves as a Wayland compositor,
which means that when we run apps inside the UI that is run with
QtApplicationManager, these apps are actual processes that render on their own.
The results are then composited by QtApplicationManager, so that the app is only
shown when in focus, it can only be rendered in its own area, and so on.

We need Wayland (and specifically, QtWayland) support to handle this properly.

### Building QtWayland
It may sound like something obvious, but QtWayland has to be compiled with
specific support for the Raspberry Pi graphics drivers. For most things, the
recipes in Yocto would handle this, but the QtWayland recipe did not. Simply
adding an option to the recipe solved the issue and we could see that we got the
right drivers deployed on target. But we still got no graphics output!

### Starting Neptune UI
[Neptune UI](https://doc-snapshots.qt.io/neptuneui/index.html) is the reference
UI for Qt Automotive Suite, and is run with the QtApplicationManager to leverage
the power of Wayland compositing and apps. It seemed however, that when we
started QtApplicationManager, the system chose the wrong Wayland driver for us,
since we had more than one driver deployed on our target (I think it was the
general wayland-egl driver), so we had to set `QT_HARDWARE_INTEGRATION=brcm` in
our environment to make it choose the Broadcom driver.

## Video memory
Voilá, Neptune booted and showed - but we quickly ran out of video memory, since
the default setting for GPU memory on the Pi is 64MB. This was easy to fix in
the `config.txt` file in the `/boot` partition, and a setting of 512MB to GPU,
leaving another 512MB to the CPU, did the trick. In the end, we got a smoothly
running Neptune UI in the QtApplicationManager on the Raspberry Pi 3. Success!

## Future work
We now have PELUX + QtAuto on the Pi with the Broadcom drivers. However, there
has been lots of development of open source drivers for the Pi graphics chip.
The Yocto support for this also requires one to set the Pi in 64-bit mode, so an
interesting continuation of this would be to do the same with the OSS driver!

## Links
- [Yocto Project](https://www.yoctoproject.org/)
- [The commit which contains everything mentioned in this post](https://github.com/Pelagicore/meta-pelux/commit/341020a406ba72687faef3b538211e557b5039a6)
- [config.txt - Raspberry Pi](https://www.raspberrypi.org/documentation/configuration/config-txt/)
