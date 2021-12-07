###
###
###


ls -la /tmp/nautilus_banner

####################------------ Update Message-of-the-day for APP 01 -------------################333

# Copy banner from jump server to App 01 server
scp -r /home/thor/nautilus_banner tony@stapp01:/tmp/


# In APP01 server move banner from /tmp/ to /etc/motd for 'updating message of the day'
ssh -t tony@stapp01 'sudo mv /tmp/nautilus_banner /etc/motd'


####################------------ Update Message-of-the-day for APP 02 -------------################





####################------------ Update Message-of-the-day for APP 03 -------------################
