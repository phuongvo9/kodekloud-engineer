

systemctl status sshd
vi /etc/ssh/sshd_config
# enable: PermitRootLogin no
systemctl restart sshd

# [root@stapp02 steve]# history
#     1  vi /etc/ssh/sshd_config
#     2  cat /etc/ssh/sshd_config | grep "Permit"
#     3  systemctl restart sshd
#     4  history