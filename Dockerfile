FROM centos:7 as builder

COPY jdk-7u21-linux-x64.tar.gz /usr/lib/jvm/

WORKDIR /usr/lib/jvm

RUN tar -zxf ./jdk-7u21-linux-x64.tar.gz

RUN update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.7.0_21/bin/java 100

RUN update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.7.0_21/bin/javac 100

CMD ["java", "-version"]
