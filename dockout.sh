#!/bin/sh

sleep 1
DISPLAY=:0 su georg -c "xrandr --output HDMI2 --off"
DISPLAY=:0 su georg -c "randr --output HDMI3 --off"
DISPLAY=:0 su georg -c "xrandr --output LVDS1 --auto"

/usr/bin/netctl stop enp0s25-dhcp
/usr/bin/systemctl start netctl-auto@wlp3s0.service
/usr/bin/systemctl start openvpn@dn42-chero.service
/usr/bin/systemctl start openvpn@ham-db0fhn.service

