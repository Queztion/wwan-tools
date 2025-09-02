


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
sudo dnf install libusb1-devel

sqlite3
sudo dnf install sqlite-devel -y

gnutls
sudo dnf install gnutls-devel -y

gpgme
sudo dnf install gpgme-devel

vapigen
sudo dnf install vala

libcurl
sudo dnf install libcurl-devel

Exception: python3 is missing modules: jinja2, typogrify
sudo dnf install pip3

mm-glib
sudo dnf install ModemManager-glib-devel

qmi-glib
sudo dnf install libqmi-devel

libsoup-3.0
sudo dnf install libsoup-devel

ninja -C build part
json
sudo dnf install json-glib-devel

flashroom
sudo dnf install flashrom-devel

xmlb-2.0
sudo dnf install libxmlb-devel

BUILD INSTALL
FAILED: meson-internal__install
sudo dnf install libxml2-utils libxslt

sudo dnf install libjcat

Double check history,
some updates are missing when I forgot to update comment:

sudo dnf install libsoup3-devel

meson setup build --prefix=/usr -Dplugin_modem_manager=enabled -Ddocs=disabled -Dman=false -Dpolkit=enabled

sudo dnf install polkit-devel

sudo dnf install systemd-devel
sudo dnf install libarchive-devel



