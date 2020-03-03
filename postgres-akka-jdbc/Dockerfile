FROM postgres:10.5
MAINTAINER innFactory "https://innFactory.de"

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb.sh /docker-entrypoint-initdb.d/schema.sh
