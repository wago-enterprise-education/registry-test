FROM alpine:latest

RUN apk --no-cache --no-progress --update add --repository http://dl-cdn.alpinelinux.org/alpine/v3.21/main \
    ca-certificates \
    openssl \
    curl && \
#    mkdir -p /usr/local/share/ca-certificates/wago-certs && \
#    curl -ksSL https://artifactory.wago.local/certs-generic-prod/wago-root-certificates/IssuingCA-SVCA01002-SHA256-base64.crt -o /usr/local/share/ca-certificates/wago-certs/IssuingCA-SVCA01002-SHA256-base64.crt && \
#    curl -ksSL https://artifactory.wago.local/certs-generic-prod/wago-root-certificates/RootCA-SVCA01001-SHA256-base64.crt -o /usr/local/share/ca-certificates/wago-certs/RootCA-SVCA01001-SHA256-base64.crt && \
#    cp /usr/local/share/ca-certificates/wago-certs/* /usr/local/share/ca-certificates && \
#    update-ca-certificates && \
    apk --no-cache --no-progress --update add \
    python3 \
    py3-pip \ 
    bash


CMD ["python3"]
