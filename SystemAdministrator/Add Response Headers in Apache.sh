#!/bin/bash

rpm -qa | grep httpd
yum install httpd -y
cat /etc/httpd/conf/httpd.conf | grep -i Listen

vi /etc/httpd/conf/httpd.conf
    #search Listen
        #/Listen
        # Load config files in the "/etc/httpd/conf.d" directory, if any.
IncludeOptional conf.d/*.conf
Header set X-XSS-Protection "1; mode-block"
Header always append X-Frame-Options SAMEORIGIN
Header set X-Content-Type-Options nosniff

# [root@stapp01 tony]# history
#     1  rpm -qa | grep httpd
#     2  yum install httpd -y
#     3  vi /var/www/html/index.html
#     4  cat /var/www/html/index.html
#     5  systemctl status httpd
#     6  vi /etc/httpd/conf/httpd.conf 
#     7  cat /etc/httpd/conf/httpd.conf | grep listen
#     8  cat /etc/httpd/conf/httpd.conf | grep -i listen
#     9  cat /etc/httpd/conf/httpd.conf | grep X
#    10  systemctl start httpd
#    11  curl http://localhost:8089
#    12  curl -i http://localhost:8089
#    13  history


Error
- At least one response header (as per requirements) is missing on App Server 1

You may check your work again to see what went wrong. The environment expires in 5 minutes.
If you think you did your work correctly and is marked failed, you may request for a review from your task dashboard. Or alternatively please take outputs/screenshot of your work and post in community.kodekloud.com.