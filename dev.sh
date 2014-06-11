#!/bin/bash

# Start DNSMasq
sudo launchctl start homebrew.mxcl.dnsmasq

# Start PFCTL Port Forwarding
sudo pfctl -evf ~/bin/pf.conf

# Start Vagrant Box
cd ~/Projects/zogdev && vagrant up
