#!/bin/bash


git clone https://gitlab.freedesktop.org/mobile-broadband/libqmi.git
cd libqmi
git checkout tags/1.38.0

meson setup build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu

qmicli --version
ninja -C build
sudo ninja -C build install

qmicli --version
