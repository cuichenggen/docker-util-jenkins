FROM jenkins/jenkins:lts
# COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER root
RUN apt-get -y install python
RUN apt-get -y install maven
    
ENTRYPOINT ["/sbin/tini" "--" "/usr/local/bin/jenkins.sh"]
