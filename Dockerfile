FROM dockerfile/ubuntu
MAINTAINER nacyot <propellerheaven@gmail.com>

# Install Docker Client
RUN \
  wget https://get.docker.com/builds/Linux/x86_64/docker-latest -O /usr/bin/docker && \
  chmod +x /usr/bin/docker
  
# Install Drone CI
RUN \
  wget downloads.drone.io/master/drone.deb && \
  dpkg -i drone.deb

ADD ./files /root/files
RUN chmod +x /root/files/*.sh

ENV GITLAB_URL http:\/\/192.168.59.103:10080

EXPOSE 80
CMD /root/files/setup_configs.sh && /root/files/run.sh

