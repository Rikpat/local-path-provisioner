FROM alpine

RUN apk update
RUN apk upgrade --no-cache busybox zlib

ARG TARGETOS TARGETARCH

COPY --chmod=111 bin/local-path-provisioner-${TARGETOS}-${TARGETARCH} /usr/bin/local-path-provisioner
ENTRYPOINT [ "/usr/bin/local-path-provisioner" ]
