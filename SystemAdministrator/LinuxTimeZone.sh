#!/bin/bash/

#During the daily standup, it was pointed out that the timezone across Nautilus Application Servers\
# in Stratos Datacenter doesn't match with that of the local datacenter's timezone,\
# which is Pacific/Port_Moresby.
#Correct the mismatch.



timedatectl --help
timedatectl set-timezone Pacific/Port_Moresby
timedatectl status




#######################################################################################################################
[root@stapp01 tony]# timedatectl list-timezones | grep Pacific/Port
Pacific/Port_Moresby

timedatectl set-timezone Pacific/Port_Moresby


[root@stapp01 tony]# timedatectl status
      Local time: Mon 2022-01-03 23:02:31 +10
  Universal time: Mon 2022-01-03 13:02:31 UTC
        RTC time: n/a
       Time zone: Pacific/Port_Moresby (+10, +1000)
     NTP enabled: n/a
NTP synchronized: yes
 RTC in local TZ: no
      DST active: n/a