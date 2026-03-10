FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y wget tar && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt

RUN wget https://github.com/fractal-bitcoin/fractald-release/releases/download/v0.3.0/fractald-0.3.0-x86_64-linux-gnu.tar.gz && \
    tar -xzf fractald-0.3.0-x86_64-linux-gnu.tar.gz && \
    mv fractald-* fractald

ENV PATH="/opt/fractald/bin:${PATH}"

WORKDIR /data
