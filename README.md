# Alpine container

An [Alpine Linux](https://www.alpinelinux.org) base image, just to keep it patched.

The upstream `alpine:latest` tag is pinned by digest in the `Dockerfile` and bumped
by Dependabot, so every base image bump is reviewable. The build then runs
`apk --no-cache upgrade` against the current Alpine package index, so the
installed package versions depend on when the image is built and two builds from
the same commit are not byte for byte identical. That is the point: the pinned
digest makes the base reviewable, the upgrade keeps the packages patched.

The image is rebuilt and pushed to
[konstruktoid/alpine](https://hub.docker.com/r/konstruktoid/alpine) on a
schedule by
[`.github/workflows/containerbuild.yml`](.github/workflows/containerbuild.yml).

## Build

```sh
podman build --format docker --no-cache -t konstruktoid/alpine:latest -f Dockerfile .
```

## Use as a base image

The `ONBUILD` instruction upgrades the package set again when a child image is
built, so a downstream `FROM konstruktoid/alpine` picks up any fix released after
the last scheduled rebuild.

These images build on it:

* [container-irssi-build](https://github.com/konstruktoid/container-irssi-build)
* [container-nginx-build](https://github.com/konstruktoid/container-nginx-build)
* [container-privoxy-build](https://github.com/konstruktoid/container-privoxy-build)
* [container-squid-build](https://github.com/konstruktoid/container-squid-build)

## Development

`.pre-commit-config.yaml` runs gitleaks, hadolint, actionlint and
markdownlint:

```sh
pre-commit run --all-files
```
