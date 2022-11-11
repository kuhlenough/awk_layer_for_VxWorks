# awk_layer_for_VxWorks
Build the one true awk for VxWorks.  This repository provides the cross compile glue for the code found at https://github.com/onetrueawk/awk.
You place the contents of this repository in a recent VxWorks installation in the **contrib** directory. Create a VxWorks Source Build (VSB) project, include the the **AWK** layer, and a **awk.vxe** is built and placed in the **usr/root/llvm/bin** directory when the project is built.

##Notes

* Awk doesn't have versions, so this is versioned 1.0, and pulls from master branch. At some point that make break as **master** evolves, if so notify me and I'll update it.
* VxWorks doesn't support popen()/pclose() so pipes are not supported, and will throw an error if used.
* The typical getting started instuctions for **awk** assume you are using a **bash** shell, the invokation from VxWorks command shell has different syntax for passing small programs as strings. Single quotes are not supported and dollar sign character needs to be escaped as well. 
So:
```
$ awk '/li/ { print $0 }' mail-list
```
becomes 
```
[VxWorks *]# awk.vxe "/li/ { print \$0 }" mail-list
```
and 
```
$ awk 'BEGIN { print "Don\47t Panic!" }'
```
is now 
```
[VxWorks *]# awk.vxe "BEGIN { print \"Don\47t Panic!\" }"
```
