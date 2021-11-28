FROM jenkins/jenkins:alpine
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/config.yaml

COPY config.yaml /var/jenkins_home/config.yaml
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY BuildPipelineDSL.groovy /usr/share/jenkins/ref/BuildPipelineDSL.groovy
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
