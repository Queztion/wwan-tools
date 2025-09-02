


git clone https://github.com/fwupd/fwupd.git

cd fwupd

meson setup build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu -Dplugin_modem_manager=enabled

ninja -C build

sudo ninja -C build install



dependencies needed:

sudo dnf group install development-tools

meson
gio-2.0 not found:
sudo dnf install glib2-devel
sudo dnf install gobject-introspection-devel.x86_64

# gtk-scan
sudo dnf install gtk-doc

# libusb1.0
sudo dnf install lubsb1-devel

sqlite3
sudo dnf install sqlite-devel -y

gnutls
sudo dnf install gnutls-devel -y



