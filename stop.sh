#!/bin/bash

sudo su
# Disable NAT
iptables -D POSTROUTING -t nat -o ppp0 -j MASQUERADE

# Disable routing
sysctl net.ipv4.ip_forward=0

# Disable DHCP/DNS server
service dnsmasq stop
service hostapd stop

# Destroy AP interface
iw dev ap0 del