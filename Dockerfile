FROM centos:6.6
MAINTAINER Andrzej WP <andrzej@codewave.pl>
RUN yum -y install dnsmasq
RUN yum -y update
RUN rpm -Uvh http://packages.asterisk.org/centos/6/current/x86_64/RPMS/asterisknow-version-3.0.1-3_centos6.noarch.rpm
RUN yum -y update
RUN yum -y install --enablerepo=asterisk-13 asterisk-configs
RUN yum -y install --enablerepo=asterisk-13 asterisk
RUN yum -y install --enablerepo=asterisk-13 asterisk-addons-core asterisk-addons-mysql asterisk-sounds-moh-opsound-alaw asterisk-sounds-moh-opsound-g722 asterisk-sounds-moh-opsound-ulaw asterisk-sounds-core-en-g722 asterisk-sounds-core-en-alaw asterisk-ogg
VOLUME ["/var/lib/asterisk", "/var/spool/asterisk", "/etc/asterisk", "/etc/ssl", "/var/log/asterisk"]
