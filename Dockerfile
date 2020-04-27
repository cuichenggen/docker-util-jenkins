FROM jenkins/jenkins:lts
# COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
USER root

RUN sudo apt-get -y update && \
    sudo apt-get -y upgrade && \
    apt-get -y install python3
    
ENTRYPOINT ["/sbin/tini" "--" "/usr/local/bin/jenkins.sh"]
