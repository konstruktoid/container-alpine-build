# Security policy

## Supported versions

Only the current `master` branch is supported. The image is rebuilt from the
latest patched packages rather than versioned, so "supported" means the most
recent build.

## Reporting a vulnerability

Report anything you find through
[GitHub security advisories](https://github.com/konstruktoid/container-alpine-build/security/advisories/new),
not as a public issue.

Please include what the issue is, how to reproduce it, and which image digest or
commit you saw it on.

## Scope

Report vulnerabilities in the packages this image installs upstream, to the
distribution or the project itself. If a vulnerable package is present in a
published image, report the affected image digest here as well, so the image can
be rebuilt once a fix is available.

What is in scope here is how this repository builds and configures the image:
the `Dockerfile`, the pinned base image digest and the GitHub Actions workflows.
