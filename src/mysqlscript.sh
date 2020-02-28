apt install default-mysql-server -y
service mysql start
chmod 777 create_user.exp
./create_user.exp