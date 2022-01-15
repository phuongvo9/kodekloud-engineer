sed -e '/code/d' /home/BSD.txt > /home/BSD_DELETE.txt
sed 's/\bfrom\b/their/g' /home/BSD.txt > /home/BSD_REPLACE.txt
cat /home/BSD_DELETE.txt | grep "code"
cat /home/BSD_REPLACE.txt | grep "from"


# [root@stapp02 home]# sed -e '/code/d' /home/BSD.txt > /home/BSD_DELETE.txt
# [root@stapp02 home]# sed 's/\bfrom\b/their/g' /home/BSD.txt > /home/BSD_REPLACE.txt
# [root@stapp02 home]# cat /home/BSD_DELETE.txt | grep "code"
# [root@stapp02 home]# cat /home/BSD_REPLACE.txt | grep "from"



for i in {1..35}; do
   kubectl exec --namespace=kube-public curl -- sh -c 'test=`wget -qO- -T 2  http://webapp-service.default.svc.cluster.local:8080/info 2>&1` && echo "$test OK" || echo "Failed"';
   echo ""
done