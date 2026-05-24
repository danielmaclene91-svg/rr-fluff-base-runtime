FROM alpine:3.10

RUN apk add --no-cache \
    openssl=1.1.1k-r0 \
    curl=7.66.0-r0 \
    bash=5.0.0-r0 \
    git=2.22.0-r0

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER root
ENTRYPOINT ["/entrypoint.sh"]