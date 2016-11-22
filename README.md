# Openstack-Centos7
Installing Openstack Newton on Centos using Packstack
#what is Openstack ?
OpenStack is not a cloud. It is not a project or a product. It is not a
virtualization system or an API or a user interface or a set of standards.
OpenStack is all of these things and more: it is a framework for doing IT
infrastructure – all IT infrastructure – in as interchangeable and
interoperable a way as we are ever likely to know how

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

```
$ git clone https://github.com/YassineFadhlaoui/Openstack-Centos7.git
$ cd Openstack-Centos7
```
#How to install openstack on centos7 using Packstack ?
you must be root
### add execution permission to setup.sh and run it

    ```
    # chmod +x setup.sh
    # ./setup.sh
    ```
    
setup.sh will add :

    ```
    LANG=en_US.utf-8
    LC_ALL=en_US.utf-8
    ```
    
to /etc/environment
    - it disables NetworkManager and Firewalld because Firewalld uses iptables so certain steps will fail also NetworkManager will tend to change network adapters that openstack is aware of.
    - activates the network service
    -changes Linux policy(turns SELINUX to permissive )
    Finally it will ask you to reboot your system
    
### add execution permission to packstack.sh and run it    

    ```
    # chmod +x packstack.sh
    # ./packstack.sh
    ```
    
packstack will install packstack on your machine then it run the command :

    ```
    packstack --gen-answer-file=answer.txt
    ```
    
answer.txt contains all the modules that they will be installed so you can change using your preferred text editor
    finally it will run packstack which will install the modules that you chose.
    That's all be patient
