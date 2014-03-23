#!/bin/bash
sudo su

echo "Installing hostapd & dnsmasq"
apt-get install hostapd dnsmasq -y

echo "Copying conf files"
cp hostapd.conf /etc/hostapd.conf
cp dnsmasq.conf /etc/dnsmasq.conf
