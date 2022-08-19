#Precheck-Linux Script v1
echo "Precheck commands before Patching"
sleep 2
echo "Running precheck Commands......please wait"
sleep 5
echo " "
echo " ============= Checking Server Name ============="
hostname
sleep 2
echo " "
echo " ============= Checking  release============="
cat /etc/redhat-release
sleep 2
echo " "
echo " ============= Checking SYS info ============="
uptime
echo " "
w
echo " "
date
sleep 2
echo " "
echo " ==========  Checking login information ==========="
last | head
sleep 2
echo " "
echo " ============= Running df ================"
df -hP
sleep 2
echo " "
echo " ============= Running uname -a ============="
uname -a
sleep 2
echo " "
echo " ============= Checking Database ============="
ps -ef | grep -i pmon
echo " "
ps -ef| grep -i LIST
sleep 2
echo " "
echo " ============= Checking  MQ ============="
ps -ef|grep -i mqm
sleep 2
echo " "
echo " ============= Checking hosts file============="
cat /etc/hosts
sleep 2
echo " "
echo " ============= Checking fstab file ============="
cat /etc/fstab
sleep 2
echo " "
echo " ============= Checking mount ============="
mount
sleep 2
echo " "
echo " ============= RUNNING cat /etc/resolv.conf ============="
cat /etc/resolv.conf
sleep 2
echo " "
echo " ============= RUNNING netstat -in =============="
netstat -in
sleep 2
echo " "
echo " ============= RUNNING netstat -rn ============="
netstat -rn
sleep 2
echo " "
echo " ============= RUNNING ifconfig ============="
ifconfig;
echo " "
ip addr show
sleep 2
echo " "
echo "=============Network Link status=============="
ip link show
echo " "
ip route show
sleep 2
echo " "
echo " ============= RUNNING crontab -l ============="
crontab -l
sleep 2
echo " "
echo " ============= Checking LVM information ============="
sleep 2
echo "-----------Checking VG----------------"
vgs
sleep 2
echo " "
echo "-----------Checking PV----------------"
pvs
sleep 2
echo " "
echo "-----------Checking LV----------------"
lvs
sleep 2
echo " "
echo "-----------Checking Mirror info for LV-----------------"
lvs -v --segments
sleep 2
echo " "
echo " =============Checking resolv.conf file ============="
cat /etc/resolv.conf
sleep 2
echo " "
echo " ============= Checking Memory ============="
free -g
echo " "
cat /proc/meminfo | egrep 'MemTotal|SwapTotal'
sleep 2
echo " "
echo " ============= Checking passwd file ============="
cat /etc/passwd
sleep 2
echo " "
echo " ============= Checking group file============="
cat /etc/group
sleep 2
echo " "
echo " ============= Checking sudoers file ============="
cat /etc/sudoers
sleep 2
echo " "
echo " ============= Checking process info ============="
ps -ef
sleep 2
echo " "
echo " ============= Checking Java info ============="
java -version
sleep 2
echo " "
rpm -qa --last |grep -i java
sleep 2
echo " "
echo " ============= Checking Sendmail info ============="
grep DS /etc/mail/sendmail.cf
sleep 2
echo " "
echo " ============= Checking Sendmail info ============="
yum history
sleep 2
echo " "
echo "======== Taking short prechecks" ; df -hP; echo "======== Total fs mounted" ; df -hP |wc -l ;echo "========" ; ifconfig ;echo "========" ;free -g ;echo "========" ;lscpu |grep "CPU(s):"|head -1 ;echo "========" ;uname -a

echo "Please collect the results and store it in a safe place"
