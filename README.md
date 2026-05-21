# **WWAN Tools for Activating WWAN on Linux / Enabling WWAN on Linux**

Will be updating this with more scripts soon, but will add instructions below




## **Scripts for clearing logs:**

truncate_syslogs.sh   - truncate syslogs  
journalctl_clear.sh - clear journalctl logs  
dmesg_clear.sh - clear dmesg logs  


## **Prerequisite Setup**

1. Linux OS (Tested on Ubuntu/Fedora)
2. FCC Unlock from https://github.com/lenovo/lenovo-wwan-unlock


By default, this should be enough. But there are instances that in order
to get the modem fully working, you would need to compile ModemManager and LVFS/fwupdmgr and its related libraries.

Insturctions are below:


1. Ubuntu 26.04 LTS can be downloaded here:
[Download Ubuntu Desktop | Ubuntu](https://ubuntu.com/download/desktop)

Install via OS via USB using Rufus,
guide can be found here:
[How to Install Ubuntu 26.04 Desktop Edition Step by Step | UbuntuHandbook](https://ubuntuhandbook.org/index.php/2026/04/how-to-install-ubuntu-26-04-desktop-edition-step-by-step/)


After OS is installed proceed to step 2.

2. FCC Unlock can be found here:
[lenovo-wwan-unlock ](https://github.com/lenovo/lenovo-wwan-unlock)

Just run FCC command in terminal:
./fcc_unlock_setup.sh

Reboot  
  
3. Since Ubuntu 26.04 is updated to latest patches for WWAN,  
Mobile Network should work already.  

Just insert SIM card and configure WWAN,   
and setup should work.   
  
Environment Config:  
OS:  Ubuntu 26.04 LTS  
Kernel: 7.0.0-14-generic  
MBIM: 1.32.0  
QMI: 1.39.0  
ModemManager 1.25.95  
fwupmgr 2.1.1   
  
    
  
Ubuntu 24.04 LTS and older releases are using older ModemManager libraries, so  
you need to go to /Fedora or /Ubuntu folder for the compilation instructions specific to those OS.  
  
Ubuntu 24.04.4 LTS:  
https://ubuntu.com/download/alternative-downloads#past-releases-and-other-flavours  


