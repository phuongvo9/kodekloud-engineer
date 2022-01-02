#

vi /etc/httpd/conf/httpd.conf

#Add the two lines

ServerTokens Prod
ServerSignature Off

# search for FolloSymlinks and remove the "Indexes"
# Options Indexes FollowSymLinks
Options FollowSymLinks

# restart web service

systemctl start httpd

systemctl status httpd