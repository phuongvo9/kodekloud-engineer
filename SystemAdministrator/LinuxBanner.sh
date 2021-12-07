###
###
###


ls -la /tmp/nautilus_banner

####################------------ Update Message-of-the-day for APP 01 -------------################333

# --Copy banner from jump server to App 01 server
scp -r /home/thor/nautilus_banner tony@stapp01:/tmp/
    # if scp command is not found, we need to install openssh-clients
        sudo yum install openssh-clients

#-- In APP01 server move banner from /tmp/ to /etc/motd for 'updating message of the day'
ssh -t tony@stapp01 'sudo mv /tmp/nautilus_banner /etc/motd'
ssh tony@stapp01

####################------------ Update Message-of-the-day for APP 02 -------------################
scp -r /home/thor/nautilus_banner steve@stapp02:/tmp/
ssh -t steve@stapp02 'sudo mv /tmp/nautilus_banner /etc/motd'

ssh steve@stapp02


####################------------ Update Message-of-the-day for APP 03 -------------################



# Nautilus App 1
ssh tony@stapp1
Ir0nM@n
# Nautilus App 2
ssh steve@stapp02
Am3ric@
# Nautilus App 3
ssh banner@stapp03
BigGr33n

# Nautilus DB Server
ssh peter@stdb01
Sp!dy