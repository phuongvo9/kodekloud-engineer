sed -e '/code/d' /home/BSD.txt > /home/BSD_DELETE.txt
sed 's/\bfrom\b/their/g' /home/BSD.txt > /home/BSD_REPLACE.txt
cat /home/BSD_DELETE.txt | grep "code"
cat /home/BSD_REPLACE.txt | grep "from"


# [root@stapp02 home]# sed -e '/code/d' /home/BSD.txt > /home/BSD_DELETE.txt
# [root@stapp02 home]# sed 's/\bfrom\b/their/g' /home/BSD.txt > /home/BSD_REPLACE.txt
# [root@stapp02 home]# cat /home/BSD_DELETE.txt | grep "code"
# [root@stapp02 home]# cat /home/BSD_REPLACE.txt | grep "from"