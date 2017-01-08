FROM centos:latest

RUN yum -y install epel-release \
	deltarpm \
	curl \
	lshw \
	net-tools && yum -y update \
	&& rm -rf /tmp/* /var/tmp/*

WORKDIR /opt/nmon

RUN curl -L -o nmon https://github.com/axibase/nmon/releases/download/16f/nmon_x86_rhel6 && \
	chmod +x nmon

ENV PATH /opt/nmon:$PATH

CMD ["nmon"]
