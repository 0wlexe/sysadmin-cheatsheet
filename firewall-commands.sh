#!/bin/bash

systemctl status firewalld
# Check status

firewall-cmd --get-default-zonefirewall-cmd --get-active-zones
# Get default zone

firewall-cmd --get-active-zones
# List zones with interfaces

firewall-cmd --get-zones
# List all zones

firewall-cmd --set-default-zone=home
# Change default zone

firewall-cmd --permanent --zone=internal --change-interface=eth0
# Add interface to zone

nmcli con mod "System eth0" connection.zone internal
# Modify zone

nmcli con up "System eth0"
# Bring up zone

firewall-cmd --get-zone-of-interface=eth0
# List zone for eth0

firewall-cmd --permanent --zone=public --list-all
# List permanent info 

Firewall-cmd --permanent --new-zone=test
# Create new zone

firewall-cmd --permanent --zone=trusted --add-source=192.168.2.0/24
# Add source to zone

firewall-cmd --permanent --zone=trusted --remove-source=192.168.2.0/24
# Remove source from zone

firewall-cmd --permanent --zone=internal --add-service=http
# Add service to zone

firewall-cmd --zone=internal --add-port=443/tcp
# Add port 443 to zone

firewall-cmd --permanent --new-service=haproxy
# Add new service

firewall-cmd --direct --add-rule ipv4 filter INPUT 0 -p tcp --dport 9000 -j ACCEPT
# Create direct rule

firewall-cmd --reload
# Reload firewall
