#!/bin/bash
#SCRIPT MUST BE RUN AS SUDO
#Currently only tested in Pop-OS 20.04, where x11 (and not wayland) is the default.
#Check if x11 folder exists, if not, create it.

if [ ! -d /etc/X11/xorg.conf.d ]; then
	mkdir -p /etc/X11/xorg.conf.d;
fi

#Overwrite any existing nvidia.conf with new one that can force gpu offloading

cp nvidia.conf /etc/X11/xorg.conf.d/nvidia.conf
