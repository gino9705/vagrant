#!/bin/bash

wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

yum install epel-release-6-8.noarch.rpm -y
	
yum update -y && yum install ansible -y
