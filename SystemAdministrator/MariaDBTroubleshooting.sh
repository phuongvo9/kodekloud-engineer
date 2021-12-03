
# There is a critical issue going on with the Nautilus application in Stratos DC. The production support team identified that the application is unable to connect to the database.
#After digging into the issue, the team found that mariadb service is down on the database server.

ssh peter@stdb01
Sp!dy


sudo su -
systemctl status mariadb

systemctl start mariadb #error - can not start

# view the detailed error message
systemctl status -l mariadb

# How to view logs for Mariadb troubleshooting - /var/log/mariadb/
tail -f /var/log/mariadb/mariadb.log
        # [root@stdb01 ~]# tail -f /var/log/mariadb/mariadb.log 
        # InnoDB: 127 rollback segment(s) active.
        # InnoDB: Creating foreign key constraint system tables
        # InnoDB: Foreign key constraint system tables created
        # 211203 13:37:17  InnoDB: Waiting for the background threads to start
        # 211203 13:37:18 Percona XtraDB (http://www.percona.com) 5.5.61-MariaDB-38.13 started; log sequence number 0
        # 211203 13:37:18 [Note] Plugin 'FEEDBACK' is disabled.
        # 211203 13:37:18 [Note] Server socket created on IP: '0.0.0.0'.
        # 211203 13:37:18 [ERROR] mysqld: Can't create/write to file '/var/run/mariadb/mariadb.pid' (Errcode: 13)
        # 211203 13:37:18 [ERROR] Can't start server: can't create PID file: Permission denied
        # 211203 13:37:18 mysqld_safe mysqld from pid file /var/run/mariadb/mariadb.pid ended

[root@stdb01 ~]# ll -lsd /var/run/mariadb/
0 drwxr-xr-x 2 root mysql 40 Dec  3 13:33 /var/run/mariadb/

[root@stdb01 ~]# chown mysql:mysql /var/run/mariadb/

[root@stdb01 ~]# ll -lsd /var/run/mariadb/
0 drwxr-xr-x 2 mysql mysql 40 Dec  3 13:33 /var/run/mariadb/

# The service now is able to start