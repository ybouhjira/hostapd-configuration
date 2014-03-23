#!/bin/bash
# Start

sudo su

#create AP intreface
iw phy phy0 interface add ap0 type __ap

ifconfig ap0 down
ifconfig ap0 hw ether 00.10.5a.44.12.b5
ifconfig ap0 up

# Configure IP address for WLAN
ifconfig ap0 192.168.150.1

# Start DHCP/DNS server
service dnsmasq restart

# Enable routing
sysctl net.ipv4.ip_forward=1

# Enable NAT
iptables -t nat -A POSTROUTING -o ap0 -j MASQUERADE

# Run access point daemon
hostapd /etc/hostapd.conf
