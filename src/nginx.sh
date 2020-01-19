apt update
apt install nginx -y
mv /localhost /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
mkdir /var/www/localhost
mv /usr/share/phpmyadmin /var/www/localhost
chown -R $USER:$USER /var/www/localhost
#openssl dhparam -out /etc/nginx/dhparam.pem 4096
expect ssl.exp 
echo "ssl_certificate /etc/ssl/certs/nginx-selfsigned.crt;ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;" > /etc/nginx/snippets/self-signed.conf
mv ssl-params.conf /etc/nginx/snippets/ssl-params.conf
service nginx restart
