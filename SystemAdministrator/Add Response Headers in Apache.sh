#!/bin/bash

rpm -qa | grep httpd
yum install httpd -y
cat /etc/httpd/conf/httpd.conf | grep -i Listen

vi /etc/httpd/conf/httpd.conf
    #search Listen
        #/Listen