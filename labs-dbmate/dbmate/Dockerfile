FROM ubuntu:18.04

ARG DBMATE_VERSION=v1.7.0

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update -yqq && \
    apt-get dist-upgrade -yqq && \
    apt-get install -yqq curl && \
    curl -fsSL -o /usr/local/bin/dbmate https://github.com/amacneil/dbmate/releases/download/${DBMATE_VERSION}/dbmate-linux-amd64 && \
    chmod +x /usr/local/bin/dbmate

ENTRYPOINT /usr/local/bin/dbmate
CMD ["version"]

VOLUME /db
WORKDIR /db
USER nobody
