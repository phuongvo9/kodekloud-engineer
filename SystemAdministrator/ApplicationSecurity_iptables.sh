#!/bin/bash
"""
We have a backup management application UI hosted on Nautilus's backup server in Stratos DC. That backup management application code is deployed under Apache on the backup server itself, and Nginx is running as a reverse proxy on the same server. Apache and Nginx ports are 3002 and 8099, respectively. We have iptables firewall installed on this server. Make the appropriate changes to fulfill the requirements mentioned below:
We want to open all incoming connections to Nginx's port and block all incoming connections to Apache's port. Also make sure rules are permanent.
"""
cat /etc/sysconfig/iptables

# Allow port 8099
iptables -A INPUT -p tcp --dport 8099 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT

# Deny incomming traffic to port 3002

iptables -A INPUT -p tcp --dport 3002 -m conntrack --ctstate NEW,ESTABLISHED -j REJECT

# Save config for iptables
service iptables save
systemctl restart iptables
systemctl status iptables


# [root@stbkp01 ~]# cat /etc/sysconfig/iptables
# # sample configuration for iptables service
# # you can edit this manually or use system-config-firewall
# # please do not ask us to add additional ports/services to this default configuration
# *filter
# :INPUT ACCEPT [0:0]
# :FORWARD ACCEPT [0:0]
# :OUTPUT ACCEPT [0:0]
# -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
# -A INPUT -p icmp -j ACCEPT
# -A INPUT -i lo -j ACCEPT
# -A INPUT -p tcp -m state --state NEW -m tcp --dport 22 -j ACCEPT
# -A INPUT -j REJECT --reject-with icmp-host-prohibited
# -A FORWARD -j REJECT
