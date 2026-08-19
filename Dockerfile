FROM alpine:latest@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b

LABEL org.opencontainers.image.title="alpine" \
      org.opencontainers.image.description="Alpine Linux base image, kept patched" \
      org.opencontainers.image.authors="Thomas Sjögren <konstruktoid@users.noreply.github.com>" \
      org.opencontainers.image.source="https://github.com/konstruktoid/container-alpine-build" \
      org.opencontainers.image.url="https://hub.docker.com/r/konstruktoid/alpine" \
      org.opencontainers.image.base.name="docker.io/library/alpine:latest"

# --no-cache keeps the index out of the layer, so no /var/cache/apk cleanup is needed.
RUN apk --no-cache upgrade

ONBUILD RUN apk --no-cache upgrade
