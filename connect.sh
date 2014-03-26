#!/bin/bash

#stop network-manager
sudo service network-manager stop

sudo killall wpa_supplicant

# start wpa_supplicant
sudo wpa_supplicant -B -Dwext -iwlan0 -c$1

# dhclient
sudo dhclient wlan0
