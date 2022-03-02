#!/bin/bash
sudo su -
yum update -y 
yum install Nginx -y
systemctl enable Nginx
systemctl start Nginx
systemctl status Nginx