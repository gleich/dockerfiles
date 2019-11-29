FROM raspbian/stretch

# Image meta data:
LABEL author matthewgleich@gmail.com

# Installing Java
RUN apt-get update
RUN apt-get install oracle-java8-jdk -y
RUN java -version

# Installing Jenkins
RUN export http_proxy="http://username:password@proxy_ip_addr:port/"
RUN export https_proxy="https://username:password@proxy_ip_addr:port/"
RUN wget --no-check-certificate -qO - https://jenkins-ci.org/debian/jenkins... | apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN sudo apt-get install jenkins -y

CMD ["systemctl", "start", "jenkins"]