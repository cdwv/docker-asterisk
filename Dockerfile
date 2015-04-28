FROM ubuntu:trusty 
MAINTAINER Grzegorz Daszuta <grzegorz.daszuta@codewave.pl>
ADD jan-hoffman-asterisk13-trusty.list /etc/apt/sources.list.d/
ENV DEBIAN_FRONTEND noninteractive
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 9DADD1C6BD844AA8DD4898AE66FF47349C245DE2
RUN apt-get update
RUN apt-get -y install asterisk asterisk-mp3 asterisk-mysql

VOLUME ["/var/spool/asterisk", "/etc/asterisk", "/etc/ssl", "/var/log/asterisk"]

