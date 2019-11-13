# This is an image that comes with python3 installed and docker installed
# Image is registered under the MIT license
# The mainatainer for this image is Matthew Gleich (Matt-Gleich)

FROM jfloff/alpine-python:3.7

# Metadata
LABEL mainatainer "matthewgleich@gmail.com"
LABEL description "Alpine image with python and git"

# Installing Git
RUN apk add --no-cache git

CMD ["git", "--version"]
