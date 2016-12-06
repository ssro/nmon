FROM centos:latest

RUN yum -y update && \
	yum -y install deltarpm \
	curl \
	lshw \
	net-tools && yum -y clean all \
	&& rm -rf /tmp/* /var/tmp/*

WORKDIR /opt/nmon

RUN curl -L -o nmon https://github.com/axibase/nmon/releases/download/16f/nmon_x86_rhel6 && \
	chmod +x nmon

ENV PATH /opt/nmon:$PATH

CMD ["nmon"]
