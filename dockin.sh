#!/bin/sh
sleep 1
DISPLAY=:0 su georg -c "xrandr --output LVDS1 --off"
DISPLAY=:0 su georg -c "xrandr --output HDMI3 --mode 1280x1024"
DISPLAY=:0 su georg -c "xrandr --output HDMI2 --mode 1280x1024 --right-of HDMI3 --rotate left"
DISPLAY=:0 su georg -c "xrandr --dpi 96"

/usr/bin/systemctl stop openvpn@dn42-chero.service
/usr/bin/systemctl stop openvpn@ham-db0fhn.service
/usr/bin/systemctl stop netctl-auto@wlp3s0.service
/usr/bin/netctl start enp0s25-dhcp

