FROM centos:7
MAINTAINER "Vadim Isaev" <vadim.o.isaev@gmail.com>

COPY download-and-install-oracle-jdk.sh /tmp/
RUN sh /tmp/download-and-install-oracle-jdk.sh
COPY oracle-jdk.sh /etc/profile.d/

CMD java -version
