---
layout: post
title:  "Why use GENIVI's Node State Manager in PELUX"
date:   2017-05-15 12:00:00 +0200
categories: genivi
author: Richard Pannek
---

Lately we've been thinking about if we could get away without using NSM and instead just use systemd targets on PELUX. I tried to collect the right data to get to a decision, so here it is.

## Usecases

1. pre-shutdown, a "passive" mode, is the obvious use-case
2. low-voltage and similar scenarios. Here, power consumption needs to be reduced, and some services might want to do that while staying loaded.
3. postponed shutdown of certain services, e.g. allowing the user to complete an ongoing phone call before shutting down.
4. various special modes that may require actions / mode-changes from multiple components, e.g. factory reset, workshop mode, etc

## systemd

You can archive #1 by having a target conflicting with everything else so everything first gets closed down, this would be called shutdown.target. Normally systemd kills all the processes. You could  change the description file and change the shutdown signal to SIGHUP or something and react in your service adequately.

Lennart Pottering states that systemd is not a "generic message broadcast service", i.e. it is not about sharing system-wide states. Therefor even if we can cover #1 the other states can't be covered.

## GENIVI Node State Manager

It's build for the sole purpose of running within the automotive domain, so it covers many of the usecases we have and will have. It is build quite nicelly as a generic component which exposes an API of callbacks which you have to implement in your own "plugin" to handle changes in the state. This plugin has to handle the logic and has to distribute the information about state changes to the components in some way (dbus, sockets, etc.).
Summary

Since the issue is to share states and distribute the decision to go into and out of modes, a central pattern and components seems like a good idea. I.e. I think that we should keep both NSM and systemd and develop our own state management plugin to NSM that fulfills our requirements (which will be fairly light to start with).
