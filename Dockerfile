FROM centos:latest

RUN yum -y update && \
	yum -y install deltarpm \
	curl \
	lshw \
	net-tools && yum -y clean all

WORKDIR /opt/nmon

RUN curl -L -o nmon https://github.com/axibase/nmon/releases/download/16f/nmon_x86_rhel && \
	chmod +x nmon

ENV PATH /opt/nmon:$PATH

CMD ["nmon"]
