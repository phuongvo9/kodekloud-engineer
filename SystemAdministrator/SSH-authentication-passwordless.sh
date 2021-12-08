### The system admins team of xFusionCorp Industries has set up some scripts on jump host that run on regular intervals and perform operations on all app servers in Stratos Datacenter. To make these scripts work properly we need to make sure the thor user on jump host has password-less SSH access to all app servers through their respective sudo users (i.e tony for app server 1). Based on the requirements, perform the following:

###Set up a password-less authentication from user thor on jump host to all app servers through their respective sudo users.

# Create ssh key pair
ssh-keygen -t rsa

# install sshpublic key from Jumphost to stapp1 to authenticate as Tony in stapp1
ssh-copy-id tony@stapp1
    Ir0nM@n
# install sshpublic key from Jumphost to stapp2 to authenticate as Steve in stapp2
ssh-copy-id steve@stapp02
    Am3ric@
# install sshpublic key from Jumphost to stapp3 to authenticate as Banner in stapp3
ssh-copy-id banner@stapp03
    BigGr33n


# Example output:
    # thor@jump_host ~$ ssh-keygen -t rsa
    # Generating public/private rsa key pair.
    # Enter file in which to save the key (/home/thor/.ssh/id_rsa): 
    # Enter passphrase (empty for no passphrase): 
    # Enter same passphrase again: 
    # Your identification has been saved in /home/thor/.ssh/id_rsa.
    # Your public key has been saved in /home/thor/.ssh/id_rsa.pub.
    # The key fingerprint is:
    # SHA256:b9dHRLZCbCD/KhmDyYU5pEpT9D2HwlZotSlz+0ACMR4 thor@jump_host.stratos.xfusioncorp.com
    # #The key's randomart image is:

    # thor@jump_host ~$ ssh-copy-id steve@stapp02
    # /bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/thor/.ssh/id_rsa.pub"
    # /bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
    # /bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
    # steve@stapp02's password: 

    # Number of key(s) added: 1

    # Now try logging into the machine, with:   "ssh 'steve@stapp02'"
    # and check to make sure that only the key(s) you wanted were added.

