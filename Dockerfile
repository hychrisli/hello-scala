FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y curl gnupg2 tree wget
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list | curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get update
RUN apt-get install -y sbt=1.3.13
RUN cd /tmp && wget https://downloads.lightbend.com/scala/2.13.3/scala-2.13.3.tgz && tar -zxvf scala-2.13.3.tgz && mv scala-2.13.3 /usr/local/share/scala
ENV SCALA_HOME /usr/local/share/scala
ENV PATH $PATH:$SCALA_HOME/bin
