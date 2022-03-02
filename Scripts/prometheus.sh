sudo su -
yum update -y
useradd -m -s /bin/bash prometheus
cd /etc
ls -la
cd sudoers.d/
ll
vi 90-cloud-init-users
cd
su - prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.33.3/prometheus-2.33.3.linux-amd64.tar.gz
ls
tar -xvf prometheus-2.33.3.linux-amd64.tar.gz
ls
mv prometheus-2.33.3.linux-amd64/ prometheus/
mkdir -p ~/prometheus/data
exit
vi /etc/systemd/system/prometheus.service

[Unit]
Description=Prometheus Server
Documentation=https://prometheus.io/docs/introduction/overview/
After=network-online.target

[Service]
User=prometheus
Restart=on-failure

#Change this line if you download the
#Prometheus on different path user
ExecStart=/home/prometheus/prometheus/prometheus \
  --config.file=/home/prometheus/prometheus/prometheus.yml \
  --storage.tsdb.path=/home/prometheus/prometheus/data

[Install]
WantedBy=multi-user.target

systemctl daemon-reload
systemctl enable prometheus
systemctl start prometheus
systemctl status prometheus