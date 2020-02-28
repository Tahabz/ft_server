wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod u+x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd /var/www/localhost; wp core download --allow-root;wp core config --dbname=wordpress --dbuser=user --dbpass=123456 --allow-root;wp core install --url=http://localhost --title=WordPress --admin_user=user --admin_password=123456 --admin_email=mtahabaz@gmail.com --allow-root;cd /
#Solving the tmp folder error
mkdir /var/www/localhost/phpmyadmin/tmp
chmod 777 /var/www/localhost/phpmyadmin/tmp
mv /config.inc.php /var/www/localhost/phpmyadmin/.
