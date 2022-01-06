#!/bin/bash

zip -r /backup/xfusioncorp_beta.zip /var/www/html/beta

scp -i /home/steve/.ssh/id_rsa /backup/xfusioncorp_beta.zip clint@stbkp01:/backup/xfusioncorp_beta.zip

