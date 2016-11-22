echo "###############################################################"
echo "#                                                             #"
echo "#       OPENSTACK INSTALLER (NEWTON VERSION)                  #"
echo "#                                                             #"
echo "##############################################################"
echo "installing centos release openstack newton"
sudo yum install -y centos-release-openstack-newton
echo "update"
yum update -y
echo "installing packstack"
sudo yum install -y openstack-packstack
echo "generating answer file"
packstack --gen-answer-file=answer.txt
ls -l answer.txt
echo " Choose what to install (yes/no) ?"
read answer
case $answer in
*yes*) gedit answer.txt;;
*)echo "are u sure you don't want to choose modules ?(yes/no)"
  read answer2
  case $answer2 in
    *yes*) echo "all right!";;
    *) gedit answer.txt ;;
  esac;;
esac
echo "all required configurations are set .. Openstack Installation will begin in few seconds"
echo "continue (yes/no) ?"
read answer3
case $answer3 in
*yes*) packstack --answer-file=answer.txt;;
*)echo 'Openstck installation will be aborted';;
esac
