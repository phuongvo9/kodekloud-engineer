#!/bin/bash

# The system admins team of xFusionCorp Industries has set up a new tool on all app servers, as they have a requirement to create a service user account that will be used by that tool. They are finished with all apps except for App Server 2 in Stratos Datacenter.
# Create a user named mariyam in App Server 2 without a home directory.



# Nautilus App 2
ssh steve@stapp02
Am3ric@

[root@stapp02 steve]# useradd --no-create-home mariyam

[root@stapp02 steve]# ls -l /home/
total 8
drwx------ 1 ansible ansible 4096 Oct 15  2019 ansible
drwx------ 1 steve   steve   4096 Jan 25  2020 steve
[steve@stapp02 ~]$ sudo cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
sync:x:5:0:sync:/sbin:/bin/sync
shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
halt:x:7:0:halt:/sbin:/sbin/halt
mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
operator:x:11:0:operator:/root:/sbin/nologin
games:x:12:100:games:/usr/games:/sbin/nologin
ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin
nobody:x:99:99:Nobody:/:/sbin/nologin
systemd-network:x:192:192:systemd Network Management:/:/sbin/nologin
dbus:x:81:81:System message bus:/:/sbin/nologin
sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin
ansible:x:1000:1000::/home/ansible:/bin/bash
steve:x:1001:1001::/home/steve:/bin/bash
mariyam:x:1002:1002::/home/mariyam:/bin/bash
merey:x:1003:1003::/home/merey:/bin/bash