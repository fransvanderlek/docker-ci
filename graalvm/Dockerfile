FROM ubuntu
RUN apt-get update && apt-get -y install wget tar
RUN wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.0.0.2/graalvm-ce-java11-linux-aarch64-21.0.0.2.tar.gz
RUN tar -xzf graalvm-ce-java11-linux-aarch64-21.0.0.2.tar.gz
ENV PATH=/graalvm-ce-java11-21.0.0.2/bin:$PATH
ENV JAVA_HOME=/graalvm-ce-java11-21.0.0.2
ENV GRAALVM_HOME=/graalvm-ce-java11-21.0.0.2

RUN DEBIAN_FRONTEND=noninteractive apt-get -qqy install git curl


ARG MAVEN_VERSION=3.8.1
ARG USER_HOME_DIR="/root"
ARG SHA=0ec48eb515d93f8515d4abe465570dfded6fa13a3ceb9aab8031428442d9912ec20f066b2afbf56964ffe1ceb56f80321b50db73cf77a0e2445ad0211fb8e38d
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries

RUN rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
  && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c - \
  && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
  && rm -f /tmp/apache-maven.tar.gz \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"


ADD ./cmd.sh /usr/local/bin/cmd.sh
RUN chmod +x /usr/local/bin/cmd.sh

RUN gu install native-image

RUN apt-get update && apt-get install -y build-essential

CMD ["cmd.sh"]
