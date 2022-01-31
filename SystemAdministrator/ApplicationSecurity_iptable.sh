#!/bin/bash

cat /etc/sysconfig/iptables

# Allow port 8097
iptables -A INPUT -p tcp --dport 8097 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT

# Deny incomming traffic to port 3002

iptables -A INPUT -p tcp --dport 3002 -m conntrack --ctstate NEW,ESTABLISHED -j REJECT