FROM circleci/openjdk:8-jdk
MAINTAINER innFactory "https://innFactory.de"

RUN sudo apt-get -qy install lsb-release apt-utils
RUN wget -qO - https://downloads.lightbend.com/rp/keys/bintray-debian | \
    sudo apt-key add - && \
    echo "deb https://dl.bintray.com/lightbend/deb $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/lightbend.list && \
    sudo apt-get install apt-transport-https -y && \
    sudo apt-get update && \
    sudo apt-get install reactive-cli
RUN sudo apt-get update && sudo apt-get install reactive-cli
RUN rp version