sudo su -
hostnamectl set-hostname nexus
yum update -y
yum install -y java-1.8.0-openjdk-devel.x86_64
cd /opt
wget https://download.sonatype.com/nexus/3/nexus-3.37.3-02-unix.tar.gz
ls
tar -xvzf nexus-3.37.3-02-unix.tar.gz
ls -l
mv nexus-3.37.3-02 nexus
ls -la
cd nexus/
ls -la
cd bin/
ls -l
adduser nexus
passwd nexus ---> #give your own passwd
visudo       ---> #nexus ALL=(ALL) NOPASSWD:ALL
cd ..
cd ..
pwd
ls -l
chown -R nexus:nexus nexus
chown -R nexus:nexus sonatype-work
ls  -l
cd nexus/bin/
ls -l
vi nexus.rc ---> uncomment #run_as_user="nexus"
cd ..
ls
cd /etc
ls
vi /etc/systemd/system/nexus.service  ---> paste it here

[Unit]
Description=nexus service
After=network.target
  
[Service]
Type=forking
LimitNOFILE=65536
ExecStart=/opt/nexus/bin/nexus start
ExecStop=/opt/nexus/bin/nexus stop
User=nexus
Restart=on-abort
TimeoutSec=600
  
[Install]
WantedBy=multi-user.target 
       
systemctl enable nexus
systemctl start nexus
systemctl status nexus
systemctl stop nexus
systemctl restart nexus
   

#then acces the webpage by using public IP

#cat /opt/sonatype-work/nexus3/admin.password
#9f4d2105-0de0-487c-8950-f9d3f7acb897

#then change your passwd
