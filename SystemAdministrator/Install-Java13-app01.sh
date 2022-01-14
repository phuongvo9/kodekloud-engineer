#!/bin/bash

#install java 13 inside /opt directory on app01 server


#ssh app01 to login to app01 server and run below command to download
sudo curl https://download.java.net/java/GA/jdk13.0.2/d4173c853231432d94f001e99d882ca7/8/GPL/openjdk-13.0.2_linux-x64_bin.tar.gz --output /opt/openjdk-13.0.2_linux-x64_bin.tar.gz
# uncompress run 
sudo tar -xf /opt/openjdk-13.0.2_linux-x64_bin.tar.gz -C /opt/
# verify run 
/opt/jdk-13.0.2/bin/java -version
