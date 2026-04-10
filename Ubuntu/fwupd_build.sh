#!/bin/bash

cd fwupd

meson setup build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu -Dplugin_modem_manager=enabled -Ddocs=disabled

ninja -C build

sudo ninja -C build install

# Check version:
fwupdmgr --version
