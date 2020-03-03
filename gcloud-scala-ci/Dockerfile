FROM circleci/openjdk:11.0.6-jdk-stretch
MAINTAINER innFactory "https://innFactory.de"

RUN sudo apt-get update && echo "Install gcloud sdk" && echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN sudo apt-get install apt-transport-https ca-certificates gnupg 
RUN sudo apt-get update && sudo apt-get install google-cloud-sdk

RUN echo "Install AWS sdk" && cd $HOME && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    sudo $HOME/aws/install

RUN sudo apt-get install python3-pip && \
    pip3 install jinja2

RUN gcloud --version &&  aws --version && echo "innFactory Cloud CI Image finished."