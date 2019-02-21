#IP=`cat /opt/chef-repo/bootstrap/ip.txt`
#USER="root"
#PASSWORD="ctrls.123"
#NAME=`cat /opt/chef-repo/bootstrap/nodename.txt`

cat /opt/chef-repo/bootstrap/ips.txt | while read ip USER PASSWORD NAME 
do
#for ip in $IP; do
        knife bootstrap  $ip -ssh-port 22 --ssh-user $USER --sudo --ssh-password $PASSWORD --no-host-key-verify -N $NAME --yes
  done
exit $?

