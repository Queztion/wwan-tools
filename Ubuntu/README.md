-------------------------------------------------------------------------------


ModemManager has libqmi and libmbim dependencies.

Installing list.txt installs several dependency requirements from these libraries. (Step 1)


-------------------------------------------------------------------------------

# Installation Instructions

For fwupdmgr only compilation,  
manual compilation of libmbim, libqmi and ModemManager can be skipped.

We can just install dev files directly:  
libmbim-glib-dev  
libmqmi-glib-dev  
libmm-glib-dev  
  
Otherwise, if manual build is needed, check guide below:


-------------------------------------------------------------------------------

## 1. Install dependencies from list.txt

xargs -a list.txt sudo apt-get install

-------------------------------------------------------------------------------

## 2.libmbim
---------

git clone https://gitlab.freedesktop.org/mobile-broadband/libmbim.git  
cd libmbim  
meson setup build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu  
ninja -C build  
sudo ninja -C build install  
  
Check version:  
$ mbimcli --version  
mbimcli 1.32.0  
  
** additional dependency for libqmi if libmbim is not built manually:  
sudo apt install libmbim-glib-dev  
  
-------------------------------------------------------------------------------

## 3.libqmi
--------
git clone https://gitlab.freedesktop.org/mobile-broadband/libqmi.git  
cd libqmi  
git checkout tags/1.38.0  
meson setup build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu  
ninja -C build  
sudo ninja -C build install  
  
Check version:  
$ qmicli --version  
qmicli 1.38.0  
  
  
** additional notes for libqmi:    
git checkout tags/1.38.0    
is added because we want to test specific release.    
otherwise we can go for main branch.    


-------------------------------------------------------------------------------

## 4.ModemManager
--------------
git clone https://gitlab.freedesktop.org/mobile-broadband/ModemManager.git
cd ModemManager
meson setup build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu --sysconfdir=/etc
ninja -C build
sudo ninja -C build install

Check version:
$ ModemManager --version
ModemManager 1.25.95





-------------------------------------------------------------------------------

5. Restart system 
