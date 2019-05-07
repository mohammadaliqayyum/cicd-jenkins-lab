FROM nginx

USER root
RUN apt-get update && apt-get install -y nano iputils-ping net-tools telnet openssh-server cron

RUN mkdir ~/.ssh && chmod 700 ~/.ssh
COPY authorized_keys /root/.ssh/
RUN chmod 640 ~/.ssh/authorized_keys

RUN service ssh start

