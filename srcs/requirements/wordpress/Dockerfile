FROM	debian:buster

RUN	apt update -y
RUN	apt upgrade -y

RUN	apt-get install wget -y

RUN	apt-get install -y php-mysql \
		php-fpm \
		mariadb-client


RUN mkdir -p /run/php/ && chown www-data:www-data /run/php/

RUN	wget https://wordpress.org/latest.tar.gz -P /var/www
RUN	cd /var/www && tar -xzf latest.tar.gz && rm latest.tar.gz
RUN	chown -R root:root /var/www/wordpress

COPY /conf/www.conf /etc/php/7.3/fpm/pool.d

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp


COPY /tools/wordpress.sh .

CMD ["bash", "wordpress.sh" ]

