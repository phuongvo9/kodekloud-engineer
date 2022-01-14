#!/bin/bash

#install java 13 inside /opt directory on app01 server


#ssh app01 to login to app01 server and run below command to download
sudo curl https://download.java.net/java/GA/jdk13.0.2/d4173c853231432d94f001e99d882ca7/8/GPL/openjdk-13.0.2_linux-x64_bin.tar.gz --output /opt/openjdk-13.0.2_linux-x64_bin.tar.gz
# uncompress run 
sudo tar -xf /opt/openjdk-13.0.2_linux-x64_bin.tar.gz -C /opt/
# verify run 
/opt/jdk-13.0.2/bin/java -version


# We need to set java binary path in environment PATH variable to use java binaries. \
# So that you can simply run java instead of the full path.

export PATH=$PATH:/opt/jdk-13.0.2/bin

#[thor@app01 ~]$ $PATH
#-bash: /usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/thor/.local/bin:/home/thor/bin:/opt/jdk-13.0.2/bin: No such file or directory
java -version