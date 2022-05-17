#!/bin/bash
# First command is the new one
# Second is the replaced command 


# Set IP address
ip addr add 192.168.1.100/24 dev eth0 

ifconfig eth0 192.168.1.100 

# Set netmask
ip addr add 192.168.1.100/24 dev eth0

ifconfig eth0 netmask 255.255.255.0

# Set MAC
ip link set dev interface address 00:07:e9:0c:ec:5e

ifconfig eth0 hw ether 00:07:e9:0c:ec:5e

# Request DHCP address
dhclient eth0

# Set default gateway
ip route add default via 192.168.1.1

route add default gw 192.168.1.1

# Show default gateway
ip route

route

# Show network device settings
ip link

ethtool eth0

# Show IP address
ip addr show

ifconfig

# Show Netmask
ip addr show

ifconfig

# Check routing
traceroute 4.2.2.2

# Restart Network Service
systemctl restart network

service network restart

# Check connectivity
ping 192.168.1.100

# Check connectivity (broadcast)
ping -b 192.168.1.255

# Show ARP table
arp

# Set static ARP entry
arp -s 192.168.1.100 00:07:e9:0c:ec:5e

# Deleting an ARP entry
arp -d  192.168.1.100

# Show network connections
ss -ltn

netstat -platune

# Scan network ports
nmap -sT -sU -P0 -O 192.168.1.100

# Resolve DNS name (address record)
dig google.com A

nslookup google.com

# Resolve DNS using server
dig @4.2.2.2 google.com

nslookup google.com 4.2.2.2
