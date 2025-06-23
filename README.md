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




