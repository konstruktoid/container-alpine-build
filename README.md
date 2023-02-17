# Alpine container

An [Alpine Linux](http://www.alpinelinux.org) base image, just to keep it patched.

```sh
podman build --format docker --no-cache -t konstruktoid/alpine:latest -f Dockerfile .
```

_Please note that because of the changes to [Docker Automated Builds](https://docs.docker.com/docker-hub/builds/)
many Docker images are now outdated and a manual build is required and
recommended._
