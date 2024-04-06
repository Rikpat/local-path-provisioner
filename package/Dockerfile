FROM alpine

RUN apk update
RUN apk upgrade --no-cache busybox zlib

ARG TARGETOS TARGETARCH

COPY bin/local-path-provisioner-${TARGETOS}-${TARGETARCH} /usr/bin/local-path-provisioner
CMD ["local-path-provisioner"]
