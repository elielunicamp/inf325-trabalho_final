FROM mariadb:10.5

COPY ./init-epinga-db.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
CMD ["mysqld"]
