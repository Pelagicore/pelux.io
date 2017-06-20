---
layout: post
title:  "How to create a shared sstate and downloads directory for the Yocto OpenEmbedded build system?"
date:   2017-06-19 14:48:00 +0200
author: Gordan Markuš
---

This article aims to describe how a shared sstate and downloads directory
can be used to speed up Yocto builds. In order to get more familiar with
the Yocto project, visit the official website.

> The Yocto Project is an open source collaboration project that provides
> templates, tools and methods to help you create custom Linux-based
> systems for embedded products regardless of the hardware architecture.

By reusing the `sstate-cache` and `downloads` directories the image build
turnaround time will be decreased. From the Yocto Project reference
manual:

> The Yocto OpenEmbedded build system builds everything from scratch unless
> BitBake can determine that parts do not need to be rebuilt. The Yocto
> Project implements shared sstate code that supports incremental builds.
> The implementation of the shared state code answers the following
> questions that were fundamental roadblocks within the OpenEmbedded
> incremental build support system:
>   * What pieces of the system have changed and what pieces have not changed?
>   * How are changed pieces of software removed and replaced?
>   * How are pre-built components that do not need to be rebuilt from scratch used when they are available?

## Setting up a NFS server

Half of the problem is setting up the infrastructure to support the shared
sstate. This section describes how to set up a shared sstate directory on
a server using NFS.

To install the NFS dependencies on a Ubuntu distribution run the following
command:

```
sudo apt-get update && sudo apt-get install nfs-kernel-server nfs-common
```

By editing the `/etc/exports` file we instruct the NFS server what
directory is being shared and on which subnet:

```
echo "/path/to/sstate-cache \
192.168.1.1/24(rw,sync,no_root_squash,no_subtree_check)" \
| sudo tee --append /etc/exports
```

Setting up the `sstate-cache` directory as read/write or
readonly is dependent on the use case. If there is a primary host that
populates the `sstate-cache`, while the other nodes should reuse and not
populate the directory then it should be mounted readonly.

## Setting up a NFS client

Mount a shared NFS directory by executing the following command:

```
sudo mount example.server:/path/to/sstate-cache /local/mounted/shared-sstate-cache
```

or alternatively populate the `/etc/fstab` as shown below. This will
ensure that the directory is mounted automatically at boot time if
possible.

```
example.server:/path/to/sstate-cache    /local/mounted/shared-sstate-cache   nfs    rsize=8192,wsize=8192,timeo=14,intr
```

## Yocto

Should a specific host system (or multiple host systems) maintain the
primary cache, update the `SSTATE_DIR` variable for that particular Linux
host system by editing the `/path/to/pelux-build/build/conf/local.conf`
local configuration file:

```
SSTATE_DIR ?= "/local/mounted/shared-sstate-cache"
DL_DIR ?= "/local/mounted/downloads"
```

The `SSTATE_MIRRORS` variable is used to configure the Yocto build system
to search other mirror locations for prebuilt cache data objects before
building out the data.

Furthermore the "PATH" suffix has to be added to the mirrors variable as
explained in the Yocto reference manual:

> If a mirror uses the same structure as `SSTATE_DIR`, you need to add
> "PATH" at the end as shown in the examples below. The build system
> substitutes the correct path within the directory structure.

```
SSTATE_MIRRORS ?= " file://.* file:///local/mounted/shared-sstate-cachePATH "
```

## Links

- [Yocto Project](https://www.yoctoproject.org/)
- [Network File System](https://help.ubuntu.com/lts/serverguide/network-file-system.html)
- [Yocto Reference Manual - Shared State Cache](http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html#shared-state-cache)
