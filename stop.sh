#!/bin/bash

# Disable NAT
sudo iptables -D POSTROUTING -t nat -o ppp0 -j MASQUERADE

# Disable routing
sudo sysctl net.ipv4.ip_forward=0

# Disable DHCP/DNS server
sudo service dnsmasq stop
sudo service hostapd stop

# Destroy AP interface
sudo iw dev ap0 del
