FROM centos:latest

RUN yum -y update && \
	yum -y install deltarpm \
	curl \
	lshw \
	net-tools && yum -y clean all

WORKDIR /opt/nmon

NMON_VERSION=16f

RUN curl -L -o nmon https://github.com/axibase/nmon/releases/download/$NMON_VERSION/nmon_x86_rhel && \
	chmod +x nmon

ENV PATH /opt/nmon:$PATH

CMD ["nmon"]
