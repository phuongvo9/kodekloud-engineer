#!/bin/bash/
#:heavy_check_mark: Task - Linux User Files
# There was some users data copied on Nautilus App Server 3 at /home/usersdata location by the Nautilus production support team in Stratos DC. Later they found that they mistakenly mixed up different user data there. Now they want to filter out some user data and copy it to another location. Find the details below:
#On App Server 3 find all files (not directories) owned by user jim inside /home/usersdata directory and copy them all while keeping the folder structure (preserve the directories path) to /official directory.
find /news -user jim -type f
[root@stapp03 usersdata]# find ./ -type f -user jim -exec cp --parent {} /official \;

