#!/bin/bash

#dd bs=4M if=/path/to/archlinux.iso of=/dev/sdx status=progress && sync
echo "if = $1    #Burn from"
echo "of = $2    #Burn into"
echo "dd bs=4M if=$1 of=$2 status=progress conv=sync,noerror"

