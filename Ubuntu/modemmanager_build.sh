#!/bin/bash

meson setup build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu --sysconfdir=/etc

mmcli --version

ninja -C build
sudo ninja -C build install

mmcli --version
