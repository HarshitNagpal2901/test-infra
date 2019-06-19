FROM debian:sid
LABEL maintainer="The Prometheus Authors <prometheus-developers@googlegroups.com>"

RUN \
    apt-get update && apt-get install -y --no-install-recommends \
        apt-utils \
        build-essential \
        ca-certificates \
        make \
	&& rm -rf /var/lib/apt/lists/*

COPY prombench /prombench/prombench
COPY Makefile /prombench/Makefile
COPY manifests/prombench /prombench/manifests/prombench

WORKDIR /prombench
