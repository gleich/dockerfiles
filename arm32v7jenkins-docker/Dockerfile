FROM jenkins4eval/jenkins:slim-arm

LABEL maintainer="matthewgleich@gmail.com"
LABEL description="ARM based jenkins image that comes with docker installed"

USER root
RUN apt install gnupg
RUN apt-key adv --keyserver pool.sks-keyservers.net --recv-keys ED75B5A4483DA07C
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common 
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
    "deb [arch=arm] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable"
RUN apt-get update  -qq \
    && apt-get install docker-ce=17.12.1~ce-0~debian -y
RUN usermod -aG docker jenkins