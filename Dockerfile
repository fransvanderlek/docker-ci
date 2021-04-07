FROM ubuntu
RUN apt-get update && apt-get upgrade -y && apt-get install default-jdk maven -y
RUN apt-get install -y apt-transport-https ca-certificates curl lxc iptables

RUN curl -sSL https://get.docker.com/ | sh

ENTRYPOINT ["docker"]

#ADD ./docker-build/build-java.sh /usr/local/bin/cmd.sh
#RUN chmod +x /usr/local/bin/cmd.sh

#RUN mkdir ./build
#ADD ./docker-build/Dockerfile ./build/Dockerfile

#CD ./build

#CMD ["cmd.sh"]

