FROM jenkins/jenkins:lts
# COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER root
RUN apt-get -y install python wget
RUN cd /usr/local && \
   wget https://www-eu.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz && \
   tar xzf apache-maven-3.6.3-bin.tar.gz && \
   ln -s apache-maven-3.6.3 apache-maven && \
   rm -f apache-maven-3.6.3-bin.tar.gz

RUN export M2_HOME=/usr/local/apache-maven
RUN export MAVEN_HOME=/usr/local/apache-maven
RUN export PATH=${M2_HOME}/bin:${PATH}
    
ENTRYPOINT ["/sbin/tini" "--" "/usr/local/bin/jenkins.sh"]
