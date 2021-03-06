## nmon

[![Build Status](https://travis-ci.org/ssro/nmon.svg?branch=master)](https://travis-ci.org/ssro/nmon)
[![Docker Repository on Quay](https://quay.io/repository/ssro/nmon/status "Docker Repository on Quay")](https://quay.io/repository/ssro/nmon)

Nmon performance utility inside a docker container. Monitor your docker machine(s) in "one go"

### Run it:

`$ docker run --rm --name nmon --pid=host --net=host --privileged -it quay.io/ssro/nmon`

### Build & run:

```
$ git clone https://github.com/ssro/nmon.git && cd nmon
$ docker build -t nmon .
$ docker run --rm --name nmon --pid=host --net=host --privileged -it nmon
```
