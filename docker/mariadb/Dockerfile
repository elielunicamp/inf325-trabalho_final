FROM mariadb:latest

ENV MARIADB_ROOT_PASSWORD=my-secret-pw
ENV MARIADB_DATABASE=mydatabase
ENV MARIADB_USER=myuser
ENV MARIADB_PASSWORD=mypassword

COPY ./init-epindadb.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
CMD ["mysqld"]
