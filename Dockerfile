FROM alpine:latest@sha256:be2656061b536c1883c4034790e21d0a09c5aaaf51968b89368a3c0371ea2c9a

LABEL org.opencontainers.image.title="alpine" \
      org.opencontainers.image.description="Alpine Linux base image, kept patched" \
      org.opencontainers.image.authors="Thomas Sjögren <konstruktoid@users.noreply.github.com>" \
      org.opencontainers.image.source="https://github.com/konstruktoid/container-alpine-build" \
      org.opencontainers.image.url="https://hub.docker.com/r/konstruktoid/alpine" \
      org.opencontainers.image.base.name="docker.io/library/alpine:latest"

# --no-cache keeps the index out of the layer, so no /var/cache/apk cleanup is needed.
RUN apk --no-cache upgrade

ONBUILD RUN apk --no-cache upgrade
