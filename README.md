removePIE
=========
This is an iOS tool which flips the MH_PIE bit in an application. 
This disables the Address Space Layout Randomization of an application.

Building
========
Execute "make" from the command line to execute the included makefile.


Usage
=====
copy the compiled executable using scp i.e 
```bash
desktop $ scp ./removePIE root@<IP address of phone>:/usr/bin/removePIE
root \# ./removePIE <application binary>
```
The <application binary> is most likely located in a sub-directory of /private/var/mobile/Applications/ on the iphone 


Original
=====

The original project can be found here: https://github.com/peterfillmore/removePIE. I've edited the code but the main point was to create a project that builds with Xcode 5+ as the original does not if using a iOS SDK higher than 6.0.
