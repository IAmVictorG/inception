FROM	debian:buster

RUN	apt update -y
RUN	apt upgrade -y

RUN	apt-get install wget -y

RUN	apt-get install -y php-mysql \
		php-fpm \
		mariadb-client

RUN	wget https://wordpress.org/latest.tar.gz -P /var/www
RUN	cd /var/www && tar -xzf latest.tar.gz && rm latest.tar.gz
RUN	chown -R root:root /var/www/wordpress

COPY /conf/www.conf /etc/php/7.4/fpm/pool.d

