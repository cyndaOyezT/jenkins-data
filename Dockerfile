FROM debian:jessie 
MAINTAINER Cynda Ouni 
Run useradd -d "/var/jenkins_home" -u 1000 -m -s /bin/bash jenkins 
RUN mkdir -p /var/log/jenkins 
RUN chown -R jenkins:jenkins /var/log/jenkins 
VOLUME ["/var/log/jenkins"]
USER Jenkins 
CMD ["echo", "Data container for jenkins"]
