#!/bin/sh
#add argument for add commit log for backup
XPJ=penEvent.xcodeproj
if [ $# != 1 ] ; then
 echo "USAGE: $0 commit"
 echo " e.g.: $0 md4test"
exit 1;
fi
#remove all xcode privte person data 
echo $XPJ/xcuserdata/$(whoami).xcuserdatad 
rm -fr $XPJ/xcuserdata/$(whoami).xcuserdatad
echo $XPJ/project.xcworkspace/xcuserdata
rm -fr $XPJ/project.xcworkspace/xcuserdata
#delete all .DS_Store
find . -name ".DS_Store" -type f -delete
#backup project code
tar cvzf penEvent_$(date +%Y%m%d%H%M)-$1.tar.gz projBackup.sh penEvent.c penEvent.xcodeproj
ls -l *.gz
