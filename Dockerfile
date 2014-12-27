FROM centos:centos6
MAINTAINER a_hashimoto@lassic.co.jp

RUN yum -y update
RUN yum -y install make gcc readline-devel zlib-devel nmap openssl openssl-devel

RUN wget http://iij.dl.sourceforge.jp/aipo/60038/aipo7020aja_linux64.tar.gz /usr/local/aipo7020aja_linux64.tar.gz

RUN tar -xvzf aipo7020aja_linux64.tar.gz
RUN tar -xvzf aipo7020/aipo7020.tar.gz

RUN cd /usr/local/aipo/bin && ./installer.sh


