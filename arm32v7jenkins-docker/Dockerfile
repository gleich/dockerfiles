FROM jenkins4eval/jenkins:slim-arm

LABEL maintainer="matthewgleich@gmail.com"
LABEL description="ARM based jenkins image that comes with docker installed"

RUN mkdir -p /tmp/download
RUN curl -L https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz | tar -xz -C /tmp/download
RUN rm -rf /tmp/download/docker/dockerd
RUN mv /tmp/download/docker/docker* /usr/local/bin/
RUN rm -rf /tmp/download
RUN groupadd -g 999 docker
RUN usermod -aG staff,docker jenkins

USER jenkins