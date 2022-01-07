#!/bin/bash
# Task details:

# Production support team of xFusionCorp Industries is working on developing some bash scripts to automate different day to day tasks.\
    # One of them is to create a bash script for taking websites backup. They have a static website running on App Server 3 in Stratos Datacenter. They need to create a bash script named media_backup.sh which should accomplish below given tasks. (Also remember to place the script under /scripts directory on App Server 3)

# a. Create a zip archive named xfusioncorp_media.zip of /var/www/html/media directory.

# b. Save the archive in /backup/ on App Server 3. This is a temporary storage as backups from this location will be clean on weekly basis so we also need to save this backup archive on Nautilus Backup Server.

# c. Copy the created archive to Nautilus Backup Server server in /backup/ location.

# d. Please make sure script won’t ask for password while coping the archive file also respective server user (for example tony in case of App Server 1) must be able to run it.


zip -r /backup/xfusioncorp_beta.zip /var/www/html/beta

scp -i /home/steve/.ssh/id_rsa /backup/xfusioncorp_beta.zip clint@stbkp01:/backup/xfusioncorp_beta.zip

#####

# Nautilus App 3
ssh banner@stapp03
BigGr33n


cd /scripts/
vi media_backup.sh
#!/bin/bash
zip -r /backup/xfusioncorp_beta.zip /var/www/html/beta
scp -i /home/steve/.ssh/id_rsa /backup/xfusioncorp_beta.zip clint@stbkp01:/backup/xfusioncorp_beta.zip


###
ssh-keygen
ssh-copy-id clint@stbkp01


ssh clint@stbkp01
H@wk3y3

###### ---
# The production support team of xFusionCorp Industries is working on developing some bash scripts to automate different day to day tasks. One is to create a bash script for taking websites backup. They have a static website running on App Server 3 in Stratos Datacenter, and they need to create a bash script named blog_backup.sh which should accomplish the following tasks. (Also remember to place the script under /scripts directory on App Server 3)



# a. Create a zip archive named xfusioncorp_blog.zip of /var/www/html/blog directory.

# b. Save the archive in /backup/ on App Server 3. This is a temporary storage, as backups from this location will be clean on weekly basis. Therefore, we also need to save this backup archive on Nautilus Backup Server.

# c. Copy the created archive to Nautilus Backup Server server in /backup/ location.

# d. Please make sure script won't ask for password while copying the archive file. Additionally, the respective server user (for example, tony in case of App Server 1) must be able to run it.