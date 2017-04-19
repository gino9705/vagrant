#!/bin/bash

#export ANSIBLE_HOST_KEY_CHECKING=False

wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

yum install epel-release-6-8.noarch.rpm -y
	
yum update -y && yum install ansible -y

rm epel-release-6-8.noarch.rpm

sed -i 's/#host_key_checking.*/host_key_checking = true/' /etc/ansible/ansible.cfg
