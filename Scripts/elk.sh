#ELK  Stack Installation:

#Login as a root user
sudo su -

#Install Elastic Search
#Port number- 9200

rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

#Create a file called elasticsearch.repo in the /etc/yum.repos.d/ directory for RedHat based distributions and Added below lines

vi /etc/yum.repos.d/elasticsearch.repo

[elasticsearch]
name=Elasticsearch repository for 7.x packages
baseurl=https://artifacts.elastic.co/packages/7.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=0
autorefresh=1
type=rpm-md

#Install the Elasticsearch package

yum install --enablerepo=elasticsearch elasticsearch -y

#To configure Elasticsearch to start automatically when the system boots up, run the following commands:

/bin/systemctl daemon-reload

/bin/systemctl enable elasticsearch.service

#Start the Elasticsearch service as follows.

systemctl enable elasticsearch.service
systemctl start elasticsearch.service
systemctl status elasticsearch.service



#Kibana Installation

#Port number - 5601

rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

vi /etc/yum.repos.d/kibana.repo


[kibana-7.x]
name=Kibana repository for 7.x packages
baseurl=https://artifacts.elastic.co/packages/7.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md



yum install kibana -y


systemctl enable kibana.service
systemctl start kibana.service
systemctl status kibana.service



#Logstash Installation

#Port number - 5044


rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

vi /etc/yum.repos.d/logstash.repo

[logstash-7.x]
name=Elastic repository for 7.x packages
baseurl=https://artifacts.elastic.co/packages/7.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md


yum install logstash -y


systemctl enable logstash.service
systemctl start logstash.service
systemctl status logstash.service



#after installation do some changes in kibana.yml file  
#cd /etc/kibana/
#vi kibana.yml
