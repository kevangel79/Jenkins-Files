#!/bin/bash

# Setup firewal rules 
# Private allow : 22, 5000, 50000
# Public allow  : 22

firewall-cmd --zone=home --change-interface=eth1
firewall-cmd --zone=public --permanent --remove-service=dhcpv6-client
firewall-cmd --zone=home --permanent --remove-service=dhcpv6-client
firewall-cmd --zone=home --permanent --remove-service=mdns
firewall-cmd --zone=home --permanent --remove-service=samba-client
firewall-cmd --zone=home --permanent --add-port=5000/tcp
firewall-cmd --zone=home --permanent --add-port=50000/tcp
firewall-cmd --reload
firewall-cmd --zone=home --list-all
firewall-cmd --list-all
