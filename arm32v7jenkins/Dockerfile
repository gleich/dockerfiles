FROM arm32v7/ubuntu

# Image meta data:
LABEL author matthewgleich@gmail.com

# Installing Jenkins
RUN apt-get update
RUN apt-get install jenkins

CMD ["systemctl", "start", "jenkins"]