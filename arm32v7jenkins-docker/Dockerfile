FROM jenkins4eval/jenkins:slim-arm

LABEL maintainer="matthewgleich@gmail.com"
LABEL description="ARM based jenkins image that comes with docker installed"

USER root
RUN sudo apt-get update -y && sudo apt-get upgrade -y
RUN sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl
RUN curl -fsSL https://apt.dockerproject.org/gpg | apt-key add -
RUN curl -sSL get.docker.com -o get-docker.sh
RUN sh get-docker.sh