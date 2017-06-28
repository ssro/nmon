FROM debian:stretch-slim

LABEL maintainer Sebastian Sasu <sebi@nologin.ro>

ENV NMON_VER="16f"

RUN apt -y update && apt -y upgrade \
  && apt -y install curl libncurses5 \
  && curl -L -o /usr/bin/nmon https://github.com/axibase/nmon/releases/download/$NMON_VER/nmon_x86_ubuntu1404 \
  && chmod +x /usr/bin/nmon \
  && apt --purge -y remove curl && apt -y autoremove && rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/nmon"]
