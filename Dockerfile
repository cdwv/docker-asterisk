FROM centos:6.6
MAINTAINER Andrzej WP <andrzej@codewave.pl>
RUN yum -y install dnsmasq yum-utils sox
RUN yum -y update

ADD http://packages.digium.com/centos/centos-digium.repo /etc/yum.repos.d/
ADD http://packages.asterisk.org/centos/centos-asterisk.repo /etc/yum.repos.d/
ADD http://packages.asterisk.org/centos/centos-asterisk-13.repo /etc/yum.repos.d/
ADD http://packages.digium.com/centos/centos-digium-13.repo /etc/yum.repos.d/

RUN yum-config-manager --enable digium-13
RUN yum-config-manager --enable asterisk-13

RUN yum -y update

RUN yum -y install \
		asterisk-configs \
		asterisk \
		asterisk-addons-core asterisk-addons-mysql \
		asterisk-sounds-moh-opsound-alaw \
		asterisk-sounds-moh-opsound-g722 \
		asterisk-sounds-moh-opsound-ulaw \
		asterisk-sounds-core-en-g722 \
		asterisk-sounds-core-en-alaw \
		asterisk-sounds-core-en-ulaw \
		asterisk-ogg \
		asterisk-odbc 

VOLUME ["/var/lib/asterisk", "/var/spool/asterisk", "/etc/asterisk", "/etc/ssl", "/var/log/asterisk"]

