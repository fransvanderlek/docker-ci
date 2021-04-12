FROM arm64v8/ubuntu
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install wget tar build-essential libz-dev zlib1g-dev git
RUN wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.0.0.2/graalvm-ce-java11-linux-aarch64-21.0.0.2.tar.gz
RUN tar -xzf graalvm-ce-java11-linux-aarch64-21.0.0.2.tar.gz
ENV PATH=/graalvm-ce-java11-21.0.0.2/bin:$PATH
ENV JAVA_HOME=/graalvm-ce-java11-21.0.0.2
RUN mkdir /usr/share/maven
RUN wget https://apache.osuosl.org/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.tar.gz
RUN tar -xzf ./apache-maven-3.8.1-bin.tar.gz -C /usr/share/maven --strip-components=1
RUN ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
RUN gu install native-image
ADD ./cmd.sh /usr/local/bin/cmd.sh
RUN chmod +x /usr/local/bin/cmd.sh
ENV GRAALVM_HOME=$JAVA_HOME
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install curl
RUN curl -sSL https://get.docker.com/ | sh
CMD ["cmd.sh"]
