#!/bin/bash

echo "Installing hostapd & dnsmasq"
sudo apt-get install hostapd dnsmasq -y

echo "Copying conf files"
sudo cp hostapd.conf /etc/hostapd.conf
sudo cp dnsmasq.conf /etc/dnsmasq.conf
