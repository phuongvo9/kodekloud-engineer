# Nautilus App 1
ssh tony@stapp1
Ir0nM@n
# Nautilus App 2
ssh steve@stapp02
Am3ric@
# Nautilus App 3
ssh banner@stapp03
BigGr33n

# Nautilus DB Server
ssh peter@stdb01
Sp!dy

#HTTP LBR
ssh loki@stlb01
Mischi3f

# -------------------------------------------------------------------------------
yum install cronie
systemctl start crond.service
systemctl status crond.service

crontab -u root -l
crontab -e 
    # input cron
    # */5 * * * * echo hello > /tmp/cron_text

watch -n 5 ls /tmp

watch -n 5 ls /tmp


