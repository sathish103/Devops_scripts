sudo yum update -y
sudo su -
yum update -y
yum install git -y
amazon-linux-extras install epel -y
amazon-linux-extras install java-openjdk11 -y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y
systemctl start jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
systemctl status jenkins