sudo su -
yum update -y
yum install git -y
amazon-linux-extras install epel -y
amazon-linux-extras install java-openjdk11 -y
cd /opt/
wget https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz
tar -xvzf apache-maven-3.8.4-bin.tar.gz
mv apache-maven-3.8.4 maven
rm -f apache-maven-3.8.4-bin.tar.gz