#!/bin/bash
"""
The system admins team of xFusionCorp Industries needs to deploy a new application on App Server 3 in Stratos Datacenter. They have some pre-requites to get ready that server for application deployment. Prepare the server as per requirements shared below:

Install and configure nginx on App Server 3.

On App Server 3 there is a self signed SSL certificate and key present at location /tmp/nautilus.crt and /tmp/nautilus.key. Move them to some appropriate location and deploy the same in Nginx.

Create an index.html file with content Welcome! under Nginx document root.

For final testing try to access the App Server 3 link (either hostname or IP) from jump host using curl command. For example curl -Ik https://<app-server-ip>/.
"""


yum install epel-release
yum install nginx

vi /etc/nginx/nginx.conf
#Enable TLS SSL listening
    #ssl_certificate "/etc/pki/nginx/nautilus.crt";
    #ssl_certificate_key "/etc/pki/nginx/private/nautilus.key";

# copy cert to the pki/nginx

