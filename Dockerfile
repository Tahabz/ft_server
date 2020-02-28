FROM debian:buster

COPY /src/general.sh .
COPY /src/localhost .
COPY /src/nginx.sh .
COPY /src/config.inc.php .
COPY /src/php.sh .
COPY /src/phpmyadmin.sh .
COPY /src/mysql.exp .
COPY /src/mysqlserv.exp .
COPY /src/mysqlscript.sh .
COPY /src/create_user.exp .
COPY /src/ssl-params.conf .
COPY /src/ssl.exp .
COPY /src/wordpress.sh .
