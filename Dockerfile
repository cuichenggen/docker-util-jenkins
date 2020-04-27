FROM jenkins/jenkins:lts
# COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER root
RUN apt-get -y update && \
    apt-get -y install software-properties-common && \
    apt-add-repository universe && \
    apt-get -y update
RUN apt-get -y install python
RUN apt-get -y install maven
    
ENTRYPOINT ["/sbin/tini" "--" "/usr/local/bin/jenkins.sh"]
