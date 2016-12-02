#!/bin/sh

xrandr --output LVDS1 --off
xrandr --output HDMI3 --mode 1280x1024
xrandr --output HDMI2 --mode 1280x1024 --right-of HDMI3 --rotate left

sudo -E systemctl stop openvpn@dn42-chero.service
sudo -E systemctl stop openvpn@ham-db0fhn
sudo -E systemctl stop netctl-auto@wlp3s0
sudo -E netctl start enp0s25-dhcp

