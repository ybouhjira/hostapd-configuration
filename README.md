# Connect to wifi and sharing the internet access on the same device 

This script uses **wpa_supplicant** to connect to a WPA2 wifi, and shares it on 
the same NIC using **hostapd**.

## How to use

   # Install 
   ./install.sh
   
   # Connect to the AP
   ./connect.sh wpa_supplicant.sh

   # Start hostapd to share the internet access
   ./start

   # Stop when finished
   ./stop
