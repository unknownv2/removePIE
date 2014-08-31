removePIE
=========
This is an iOS tool which flips the MH_PIE bit in an application. 
This disables the Address Space Layout Randomization of an application.

Building
========
Building has been set-up to use OS-X, Xcode and the iOS 7.0+ SDK in 
default directories. execute "make" from the command line to execute the included makefile.


Usage
=====
copy the compiled executable using scp i.e 
```bash
desktop $ scp ./removePIE root@<IP address of phone>:/usr/bin/removePIE
root \# ./removePIE <application binary>
```
The <application binary> is most likely located in a sub-directory of /private/var/mobile/Applications/ on the iphone 


