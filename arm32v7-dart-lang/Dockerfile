FROM raspbian/desktop

# Meta data
LABEL version="1.0"
LABEL maintainer="matthewgleich@gmail.com"
LABEL description="Dart SDK in a docker image designed to run on arm32v7 based CPUs"

RUN sudo wget https://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-linux-arm-release.zip -P /usr/local/bin
WORKDIR /usr/local/bin
RUN sudo apt-get update
RUN sudo apt-get install -y unzip zip
RUN sudo unzip dartsdk-linux-arm-release.zip
RUN export PATH=/usr/local/bin/dark-sdk/bin:$PATH
RUN echo 'export PATH="$PATH:/usr/local/bin/dart-sdk/bin"' >> ~/.profile
