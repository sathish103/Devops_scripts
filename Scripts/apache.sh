#!/bin/bash
sudo su -
yum update -y 
yum install httpd -y
systemctl enable httpd
systemctl start httpd
systemctl status httpd
echo "developer1"

