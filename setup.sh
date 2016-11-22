echo "###############################################################"
echo "#                                                             #"
echo "#       OPENSTACK INSTALLER (NEWTON VERSION)                  #"
echo "#                                                             #"
echo "##############################################################"
echo "adding LANG and LC_ALL to /etc/environment"
echo "
LANG=en_US.utf-8
LC_ALL=en_US.utf-8" >> /etc/environment
echo "Stopping NetworkManager and Firewalld"
systemctl disable NetworkManager Firewalld
systemctl stop NetworkManager Firewalld
echo "enabling network"
systemctl enable network
echo "changing selinux configurations"
sed 's/SELINUX=enforcing/SELINUX=permissive/g'< /etc/selinux/config | tee /etc/selinux/config
echo "you have to reboot"
echo "reboot now (yes/no) ?"
read answer
case $answer in
*yes*) echo 'rebooting...'
sync;reboot;;
*)echo 'reboot aborted'
echo 'verifying configuration files...'
echo '**************/etc/environment content:***************'
head /etc/environment
echo '**************/etc/selinux/config content:************'
cat /etc/selinux/config
sync;;
esac
