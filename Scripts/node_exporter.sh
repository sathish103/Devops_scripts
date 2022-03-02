sudo su -
wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
tar -xzvf node_exporter-1.3.1.linux-amd64.tar.gz
ls
useradd -rs /bin/false nodeusr
mv node_exporter-1.3.1.linux-amd64/node_exporter /usr/local/bin/node_exporter

vim /etc/systemd/system/node_exporter.service
[Unit]
Description=Node Exporter
After=network.target
[Service]
User=nodeusr
Group=nodeusr
Type=simple
ExecStart=/usr/local/bin/node_exporter
[Install]
WantedBy=multi-user.target

systemctl daemon-reload
systemctl start node_exporter
systemctl status node_exporter
systemctl enable node_exporter

#run this command to check node exporter is working or not
curl http://localhost:9100/metrics