#!/bin/bash

git clone https://gitlab.freedesktop.org/mobile-broadband/ModemManager.git
cd ModemManager
meson setup build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu --sysconfdir=/etc

mmcli --version

ninja -C build
sudo ninja -C build install

mmcli --version
