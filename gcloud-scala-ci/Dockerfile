FROM circleci/openjdk:8-jdk
MAINTAINER innFactory "https://innFactory.de"

RUN sudo apt-get -qy install lsb-release apt-utils
RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk-$(lsb_release -c -s) main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
	curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add 
RUN sudo apt-get -qy update && sudo apt-get -qy install kubectl google-cloud-sdk google-cloud-sdk-app-engine-python google-cloud-sdk-app-engine-python-extras google-cloud-sdk-app-engine-java google-cloud-sdk-app-engine-go google-cloud-sdk-datalab google-cloud-sdk-datastore-emulator google-cloud-sdk-pubsub-emulator google-cloud-sdk-cbt google-cloud-sdk-bigtable-emulator kubectl

RUN wget -qO - https://downloads.lightbend.com/rp/keys/bintray-debian | \
    sudo apt-key add - && \
    echo "deb https://dl.bintray.com/lightbend/deb $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/lightbend.list && \
    sudo apt-get install apt-transport-https -y && \
    sudo apt-get update && \
    sudo apt-get install reactive-cli
RUN sudo apt-get update && sudo apt-get install reactive-cli
RUN rp version