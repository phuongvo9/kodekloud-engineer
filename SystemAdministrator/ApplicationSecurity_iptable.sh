#!/bin/bash

cat /etc/sysconfig/iptables

# Allow port 8097
iptables -A INPUT -p tcp --dport 8097 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT

