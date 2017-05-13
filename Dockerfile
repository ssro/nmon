FROM centos:latest

MAINTAINER Sebastian Sasu <sebastian@nologin.ro>

RUN yum -y install epel-release \
	deltarpm \
	curl \
	lshw \
	net-tools && yum -y update

WORKDIR /opt/nmon

ENV NMON_VER="16f"

RUN curl -L -o nmon https://github.com/axibase/nmon/releases/download/$NMON_VER/nmon_x86_rhel6 && \
	chmod +x nmon
RUN yum -y remove epel-release deltarpm \
	&& yum -y clean all && rm -rf /tmp/* /var/tmp/* /var/cache/yum/*

ENV PATH /opt/nmon:$PATH

CMD ["nmon"]
