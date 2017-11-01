---
layout: post
title:  "How to get journald in DLT?"
date:   2017-05-29 12:00:00 +0200
categories: genivi
author: Gordan Markuš
---
As we have decided on using DLT as a logging mechanism for the PELUX Suite, we had to be sure if it supports integration with systemd's journal, how to set it up and if there are any pitfalls. 

## Use cases

1. A Platform, Service and App developer walk in to a bar and want to see a PELUX based device's logs in a centralized place.
2. A Platform developer would like to observe the kernel messages and which services are failing on startup. After understanding which service is failing he would like to filter the logs of that service.

## Introduction

[DLT (Diagnostic Log and Traces)](https://at.projects.genivi.org/wiki/display/PROJ/Diagnostic+Log+and+Trace) is a GENIVI logging mechanism. The [DLT daemon](https://github.com/GENIVI/dlt-daemon) is a central component in GENIVI, which gathers all logs and traces from the DLT user applications. The logs and traces can optionally be directly written to a file in the ECU. The DLT daemon forwards all logs and traces to a connected DLT client. The DLT client can send control messages to the daemon, e.g. to set individual log levels of applications and contexts or get the list of applications and contexts registered in the DLT daemon.

## Build system

The dlt-daemon is built using the CMake build system.

## Systemd integration and the jorunald adapter

The dlt-daemon comes with an out-of-the-box systemd integration and a journald adapter that can be enabled using a Cmake build flags.

CMake compilation flags that enabled systemd integration and the journald adapter:

      cmake -DWITH_SYSTEMD=ON -DWITH_SYSTEMD_JOURNAL=ON

The systemd integration implies that the dlt-daemon is launched as a service, while the journald adapter enables the DLT logging system to log systemd journal messages.

## Conclusion

Enabling systemd's journal in DLT is quite straightforward and comes with an out-of-the-box integration. Though a minor pitfall could be if a user is trying to observe journald messages locally through DLT he should be in the appropriate user group (systemd-journal).
