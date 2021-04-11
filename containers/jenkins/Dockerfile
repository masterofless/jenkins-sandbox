FROM jenkins/jenkins:lts

# VOLUME /var/jenkins_home
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /usr/share/jenkins/ref/casc.yaml
RUN mkdir /usr/share/jenkins/ref/jobsdsl

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY casc.yaml /usr/share/jenkins/ref/casc.yaml
COPY secrets/jenkins_keystore.jks /usr/share/jenkins/ref/jenkins_keystore.jks

COPY jobdsl/*.groovy /usr/share/jenkins/ref/jobsdsl/
