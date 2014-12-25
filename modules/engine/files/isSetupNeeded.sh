#!/bin/zsh
ps -A | grep ovirt >flag
FLAG=`cat flag`
if [ $FLAG ]; then
    echo we have setup
    exit 1
fi
echo no setup
exit 0
