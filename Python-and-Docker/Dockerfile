# This is an image that comes with python3 installed and docker installed
# Image is registered under the MIT license
# The mainatainer for this image is Matthew Gleich (Matt-Gleich)

FROM ubuntu

# Metadata
LABEL mainatainer "matthewgleich@gmail.com"
LABEL description "Image that comes with Python3 and Docker installed"

# Installing Python
RUN apt-get update
RUN apt-get -qq -y install python3
RUN apt-get -qq -y install python3-pip

# Installing Docker
RUN apt-get -qq -y install docker

CMD ["python3"]
