FROM jenkins4eval/jenkins:slim-arm

LABEL maintainer="matthewgleich@gmail.com"
LABEL description="ARM based jenkins image that comes with docker installed"

RUN mkdir -p /tmp/download && \
    curl -L https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz | tar -xz -C /tmp/download && \
    rm -rf /tmp/download/docker/dockerd && \
    mv /tmp/download/docker/docker* /usr/local/bin/ && \
    rm -rf /tmp/download && \
    groupadd -g 999 docker && \
    usermod -aG staff,docker jenkins

USER jenkins