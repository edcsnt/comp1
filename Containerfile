FROM docker.io/library/alpine:latest AS build
COPY comp1.c config.mk Makefile .
RUN <<EOT
  apk update
  apk -X https://dl-cdn.alpinelinux.org/alpine/edge/testing/ upgrade
  apk -X https://dl-cdn.alpinelinux.org/alpine/edge/testing/ add \
    cproc \
    make \
    musl-dev
  make
EOT
FROM scratch
COPY --from=build comp1 .
ENTRYPOINT ["./comp1"]
