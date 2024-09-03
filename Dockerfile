FROM registry.access.redhat.com/ubi9/ubi-minimal:latest as builder-runner

FROM builder-runner as builder
COPY myfile myfile

FROM scratch
LABEL description="some stuff"

COPY --from=builder myfile myfile
