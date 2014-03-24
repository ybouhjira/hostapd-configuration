#!/bin/bash
# Start


#create AP intreface
sudo iw phy phy0 interface add ap0 type __ap

sudo ifconfig ap0 down
sudo ifconfig ap0 hw ether 18:3F:47:95:DF:0B
sudo ifconfig ap0 up

# Configure IP address for WLAN
sudo ifconfig ap0 192.168.150.1

# Start DHCP/DNS server
sudo service dnsmasq restart

# Enable routing
sudo sysctl net.ipv4.ip_forward=1

# Enable NAT
sudo iptables -t nat -A POSTROUTING -o ap0 -j MASQUERADE

# Run access point daemon
sudo hostapd /etc/hostapd.conf
