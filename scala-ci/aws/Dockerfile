FROM circleci/openjdk:11.0.6-jdk-stretch
MAINTAINER innFactory "https://innFactory.de"

RUN echo "Install AWS sdk" && cd $HOME && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    sudo $HOME/aws/install

RUN sudo apt-get update && sudo apt-get install python3-pip && \
    pip3 install jinja2

RUN aws --version && echo "innFactory AWS CI Image finished."