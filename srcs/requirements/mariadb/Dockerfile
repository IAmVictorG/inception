FROM debian:buster

RUN apt update -y
RUN apt upgrade -y

RUN apt-get install mariadb-server -y

RUN mkdir -p /run/mysqld/ && chown -R mysql:mysql /run/mysqld/


COPY conf/my-50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/dbscript.sh .

CMD ["bash", "/dbscript.sh"]