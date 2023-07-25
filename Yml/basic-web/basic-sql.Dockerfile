FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=admin
ENV MYSQL_DATABASE=test
ENV MYSQL_USER=admin
ENV MYSQL_PASSWORD=password

RUN echo "CREATE DATABASE $MYSQL_DATABASE;" > /docker-entrypoint-initdb.d/create_database.sql
RUN echo "CREATE USER $MYSQL_USER@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" > /docker-entrypoint-initdb.d/create_user.sql
RUN echo "GRANT ALL ON $MYSQL_DATABASE.* TO $MYSQL_USER@'%';" > /docker-entrypoint-initdb.d/grant_privileges.sql

EXPOSE 3306

CMD ["mysqld"]