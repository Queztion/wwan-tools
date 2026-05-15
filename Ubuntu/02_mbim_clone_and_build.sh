#!/bin/bash

git clone https://gitlab.freedesktop.org/mobile-broadband/libmbim.git
cd libmbim
meson setup build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu


mbimcli --version
ninja -C build
sudo ninja -C build install

mbimcli --version
