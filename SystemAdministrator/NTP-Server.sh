# Install and configure NTP server on App Server 2.

# Add NTP server 3.pool.ntp.org in NTP configuration on App Server 2.

# Please do not try to start/restart/stop ntp service
# as we already have a restart for this service scheduled for tonight and we don't want these changes to be applied right now.

[steve@stapp02 ~]$ history
    1  sudo rpm -qa | grep NTP
    2  sudo yum install ntp
    3  sudo vi /etc/ntp.conf 
    4  cat /etc/ntp | grep europe
    5  cat /etc/ntp.conf | grep europe
    6  history