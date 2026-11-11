FROM alpine:latest@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf

LABEL org.opencontainers.image.title="alpine" \
      org.opencontainers.image.description="Alpine Linux base image, kept patched" \
      org.opencontainers.image.authors="Thomas Sjögren <konstruktoid@users.noreply.github.com>" \
      org.opencontainers.image.source="https://github.com/konstruktoid/container-alpine-build" \
      org.opencontainers.image.url="https://hub.docker.com/r/konstruktoid/alpine" \
      org.opencontainers.image.base.name="docker.io/library/alpine:latest"

# --no-cache keeps the index out of the layer, so no /var/cache/apk cleanup is needed.
RUN apk --no-cache upgrade

ONBUILD RUN apk --no-cache upgrade
