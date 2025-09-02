


git clone https://github.com/fwupd/fwupd.git

cd fwupd

meson setup build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu -Dplugin_modem_manager=enabled

ninja -C build

sudo ninja -C build install

