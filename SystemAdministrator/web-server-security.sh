#

vi /etc/httpd/conf/httpd.conf

#Add the two lines

ServerTokens Prod
ServerSignature Off

# search for FolloSymlinks and remove the "Indexes"
# Options Indexes FollowSymLinks
Options FollowSymLinks


#Search for a word named Indexes in forward direction:
    #Press ESC key
    #Type /Indexes
# restart web service

systemctl start httpd

systemctl status httpd