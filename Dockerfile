FROM ubuntu
RUN apt-get update && apt-get upgrade -y && apt-get install default-jdk maven -y
RUN apt-get install -y apt-transport-https ca-certificates curl lxc iptables
RUN curl -sSL https://get.docker.com/ | sh
ADD ./docker-build/cmd.sh /usr/local/bin/cmd.sh
RUN chmod +x /usr/local/bin/cmd.sh
RUN apt-get install git -y
RUN mkdir /maven_repository
VOLUME /maven_repository
ADD ./docker-build/maven-settings.xml /usr/share/maven/conf/settings.xml

CMD ["cmd.sh"]

