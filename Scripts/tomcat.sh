sudo yum update -y
sudo su -
amazon-linux-extras install epel -y
amazon-linux-extras install java-openjdk11 -y
cd /opt
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58-windows-x64.zip
unzip apache-tomcat-9.0.58-windows-x64.zip
rm -f apache-tomcat-9.0.58-windows-x64.zip
mv apache-tomcat-9.0.58 tomcat
ls
chmod -R 700 tomcat
ll
cd tomcat
cd bin
sh ./startup.sh
sh ./shutdown.sh
ps -ef | grep "tomcat"