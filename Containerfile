FROM docker.io/library/alpine:latest AS build
COPY comp1.c Makefile .
RUN <<EOT
apk update
apk upgrade
apk add gcc make musl-dev
make
EOT
FROM scratch
COPY --from=build comp1 .
ENTRYPOINT ["./comp1"]
