sudo su _    
hostnamectl set-hostname SQ
yum list | grep openjdk
amazon-linux-extras list
amazon-linux-extras install java-openjdk11 -y
java -version
cd /opt
ll
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.7.52159.zip
ll
unzip sonarqube-8.9.7.52159.zip
ll
adduser sonaradmin
id sonaradmin
chown -R sonaradmin:sonaradmin sonarqube-8.9.7.52159
ll
cd sonarqube-8.9.7.52159/
ll
cd bin
ll
cd linux-x86-64/
ll
chmod -R 777 /opt/sonarqube-8.9.7.52159/
su - sonaradmin
cd /opt/
cd /sonarqube-8.9.7.52159/bin/linux-x86-64/
ll
cd sonarqube-8.9.7.52159/
ll
cd bin
ll
cd linux-x86-4
ll
./sonar.sh start
./sonar.sh status


#then access the webpage by using public Ip
#default credentials:
#username: admin
#passwd  : admin