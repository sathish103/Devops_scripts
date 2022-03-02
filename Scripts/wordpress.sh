sudo su -
yum install httpd -y
yum install php-mysql -y
amazon-linux-extras install php7.3 -y
systemctl enable httpd --now
cd /var/www/html/
ls
wget http://wordpress.org/latest.tar.gz
ls
tar -zxvf latest.tar.gz
ls
cd wordpress/
ls
cp wp-config-sample.php /home/ec2-user/
      # http://ec2-13-234-122-215.ap-south-1.compute.amazonaws.com/wordpress/wp-admin/setup-config.php?step=1
ls
mv wp-config-sample.php wp-config.php
vi wp-config.php
cat > wp-config.php
vi wp-config.php