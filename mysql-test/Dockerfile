FROM mysql:5.7
COPY employee-db.sql /docker-entrypoint-initdb.d/dump.sql
ENV MYSQL_DATABASE=employee-db

