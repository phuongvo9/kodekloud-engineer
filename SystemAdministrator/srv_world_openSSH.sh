apt -y install openssh-server

vi /etc/ssh/sshd_config

# line 32: uncomment and change to no
PermitRootLogin No
systemctl restart ssh