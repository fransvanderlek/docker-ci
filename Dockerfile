FROM ubuntu
RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive apt-get -qqy install default-jdk maven apt-transport-https ca-certificates curl lxc iptables git
RUN curl -sSL https://get.docker.com/ | sh
ADD ./docker-build/cmd.sh /usr/local/bin/cmd.sh
RUN chmod +x /usr/local/bin/cmd.sh
RUN mkdir /maven_repository
VOLUME /maven_repository
ADD ./docker-build/maven-settings.xml /usr/share/maven/conf/settings.xml
ADD ./docker-build/maven-settings.xml /etc/maven/settings.xml

CMD ["cmd.sh"]

