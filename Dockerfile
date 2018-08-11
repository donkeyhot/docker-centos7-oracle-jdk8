FROM centos:7
MAINTAINER "Vadim Isaev" <vadim.o.isaev@gmail.com>

WORKDIR /tmp/

COPY download-and-install-oracle-jdk.sh .
RUN sh download-and-install-oracle-jdk.sh
RUN rm download-and-install-oracle-jdk.sh

COPY oracle-jdk.sh /etc/profile.d/

WORKDIR /

CMD java -version
