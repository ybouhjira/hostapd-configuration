#!/bin/bash

# wpa_supplicant config file
sudo su

# stop network-manager
service network-manager stop

# start wpa_supplicant
wpa_supplicant -Dwext -iwlan0 -c$1 -B

# dhclient
dhclient wlan0
