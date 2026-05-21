#!/bin/bash

git clone https://github.com/fwupd/fwupd.git
cd fwupd
git checkout tags/2.1.3

meson setup build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu -Dplugin_modem_manager=enabled -Ddocs=disabled -Dsubprojects/libxmlb:docs=disabled

ninja -C build

sudo ninja -C build install

# Check version:
fwupdmgr --version
