
# spark

A `debian:jessie` based [Spark](http://spark.apache.org) container. Use it in a standalone cluster with the accompanying `docker-compose.yml`, or as a base for more complex recipes.

## docker build
to build the image just run

    docker build -t innfactory/spark .

## docker-compose example

To create a simplistic standalone cluster with [docker-compose](http://docs.docker.com/compose):

    docker-compose up

The SparkUI will be running at `http://${YOUR_DOCKER_HOST}:8080` with three worker listed. 

##credits
thanks to getty image for the base template of spark.
customized for [innFactory](https://innfactory.de)

## license

MIT
