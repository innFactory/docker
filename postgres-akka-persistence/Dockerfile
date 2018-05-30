FROM postgres:10.4
MAINTAINER innFactory "https://innFactory.de"

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb.sh /docker-entrypoint-initdb.d/schema.sh
