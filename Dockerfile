FROM jenkins/jenkins:lts
# COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install python3
