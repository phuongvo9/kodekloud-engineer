### During the monthly compliance meeting, it was pointed out that several servers in the Stratos DC do not have a valid banner. The security team has provided serveral approved templates which should be applied to the servers to maintain compliance. \
# These will be displayed to the user upon a successful login.
# Update the message of the day on all application and db servers for Nautilus. Make use of the approved template located at /home/thor/nautilus_banner on jump host

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
scp -r /home/thor/nautilus_banner banner@stapp03:/tmp/
ssh -t banner@stapp03 'sudo mv /tmp/nautilus_banner /etc/motd'

ssh banner@stapp03



####################------------ Update Message-of-the-day for Database server -------------################
scp -r /home/thor/nautilus_banner peter@stdb01:/tmp/
ssh -t peter@stdb01 'sudo mv /tmp/nautilus_banner /etc/motd'

ssh peter@stdb01


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