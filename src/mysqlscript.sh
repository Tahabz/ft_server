apt install expect -y
apt install lsb-release -y
wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
chmod 777 mysql.exp
./mysql.exp
apt update
chmod 777 mysqlserv.exp
./mysqlserv.exp
service mysql start
chmod 777 create_user.exp
./create_user.exp
dpkg --configure -a
rm /var/lib/dpkg/lock-frontend
rm /var/cache/apt/archives/lock
rm /var/lib/dpkg/lock
dpkg --configure -a
