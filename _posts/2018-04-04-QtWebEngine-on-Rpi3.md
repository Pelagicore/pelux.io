---
layout: post
title:  "QtWebEngine on Raspberry Pi 3 using a Wayland client"
date:   2018-04-04 19:00:00 +0100
categories: yocto qt
author: Florent Revest
---

[Netpune UI's] (https://doc-snapshots.qt.io/neptuneui/index.html)
Browser Application is created using the QtWebEngine, while one off
the targeted platforms for PELUX is the Raspberry Pi 3. 
Unfortunately, the combination of Wayland compositing and the 
Raspberry Pi 3's Broadcom drivers is not a good match...

Follow the issue on the following [link]
(https://bugreports.qt.io/browse/QTBUG-67415).
