FROM jenkins/jenkins:lts
# COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

RUN apt -y update && \
    apt -y upgrade && \
    apt -y install python
