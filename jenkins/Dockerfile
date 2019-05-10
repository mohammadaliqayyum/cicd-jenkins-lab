FROM jenkins/jenkins:lts

USER root
RUN rm -rf /var/jenkins_home/.ssh
RUN apt-get update && apt-get install -y nano iputils-ping net-tools telnet openssh-server cron maven ansible
RUN service ssh start

RUN mkdir ~/.ssh
COPY config /root/.ssh/
COPY id_rsa /root/.ssh/

RUN chmod 400 /root/.ssh/config
RUN chmod 600 /root/.ssh/id_rsa

RUN chown -R jenkins:jenkins /root/.ssh

RUN cp -rp /root/.ssh /var/jenkins_home/

RUN (crontab -l ; echo "* * * * * cp -rp /root/.ssh /var/jenkins_home/") | crontab
USER jenkins
