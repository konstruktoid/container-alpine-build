FROM alpine:latest@sha256:beefdbd8a1da6d2915566fde36db9db0b524eb737fc57cd1367effd16dc0d06d

RUN \
    apk update && \
    apk upgrade && \
    rm -rf /var/cache/apk/*

ONBUILD RUN apk update && apk upgrade
