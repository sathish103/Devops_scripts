sudo su -
apt-get update -y
apt-get upgrade -y
apt-get install git -y
git clone https://github.com/Saikrishnareddy12345/mysql_django.git
ls
apt install python3-pip-y
pip install django -y
apt-get install python3-dev
apt-get install python3-dev libmysqlclient-dev -y
pip install mysqlclient
ll
cd mysql_django/
ll
pip install django-widget_tweaks
ll
cd mysql_django/
ll
vi settings.py

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'djangoprojectdb',
        'USER': 'admin',
        'PASSWORD': 'sathishreddy',
        'HOST': 'mysql-dbms.cokrhns64gio.ap-south-1.rds.amazonaws.com',
        'PORT': '3306',
    }
}


   
apt install mysql-client-core-8.0
mysql -h mysql-dbms.cokrhns64gio.ap-south-1.rds.amazonaws.com -u admin -p

#After connecting to the mysql run follwing commands:
-----------------------------------------------------


CREATE USER 'project1appuser'@'%' IDENTIFIED BY 'JCLrkq492PC49NF89N2PC';
GRANT ALL PRIVILEGES ON djangoprojectdb.* TO 'project1appuser'@'%';


mysql -h mysql-dbms.cokrhns64gio.ap-south-1.rds.amazonaws.com -u project1appuser -p
cd ..
ll  
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:4000 &
mysql -h mysql-dbms.cokrhns64gio.ap-south-1.rds.amazonaws.com -u project1appuser -p