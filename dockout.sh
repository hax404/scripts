#!/bin/sh

xrandr --output HDMI2 --off
xrandr --output HDMI3 --off
xrandr --output LVDS1 --auto

sudo -E netctl stop enp0s25-dhcp
sudo -E systemctl start netctl-auto@wlp3s0
sudo -E systemctl start openvpn@dn42-chero.service
sudo -E systemctl start openvpn@ham-db0fhn

