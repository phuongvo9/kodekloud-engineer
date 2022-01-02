# During a recent security audit, the application security team of xFusionCorp Industries found security issues with the Apache web server on Nautilus App Server 2 server in Stratos DC. They have listed several security issues that need to be fixed on this server. Please apply the security settings below:

# a. On Nautilus App Server 2 it was identified that the Apache web server is exposing the version number. Ensure this server has the appropriate settings to hide the version number of the Apache web server.

# b. There is a website hosted under /var/www/html/beta on App Server 2. It was detected that the directory /beta lists all of its contents while browsing the URL. Disable the directory browser listing in Apache config.


# curl -I http://172.16.238.11:8080 6 --> showed Apache version.
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