FROM ubuntu:16.04
 # Install Oracle Java 8
# Copied from https://hub.docker.com/r/cloudesire/java/~/dockerfile/
RUN echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list && \
    echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends \
    oracle-java8-installer oracle-java8-set-default oracle-java8-unlimited-jce-policy && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists && \
    rm -rf /var/cache/oracle-jdk8-installer
 RUN apt-get update && apt-get -y install apt-transport-https
 RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list && \
 apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 && \
 apt-get update && \
 apt-get install -y sbt