FROM arm64v8/alpine
RUN apk add curl tar
RUN curl -sSL https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.0.0.2/graalvm-ce-java11-linux-aarch64-21.0.0.2.tar.gz
RUN tar -xzf graalvm-ce-java11-linux-aarch64-21.0.0.2.tar.gz
RUN export PATH=/graalvm-ce-java11-21.0.0.2/bin:$PATH
RUN export JAVA_HOME=/graalvm-ce-java11-21.0.0.2
RUN gu install native-image
ENTRYPOINT ["native-image"]
