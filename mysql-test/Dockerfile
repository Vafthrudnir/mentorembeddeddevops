FROM mysql:8.0
COPY employee-db.sql /docker-entrypoint-initdb.d/dump.sql
ENV MYSQL_DATABASE=employee-db

