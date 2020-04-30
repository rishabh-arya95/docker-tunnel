FROM alpine:latest
RUN apk update && \
    apk add --no-cache ca-certificates wget unzip libc6-compat && \
    update-ca-certificates
        
RUN wget https://downloads.lambdatest.com/tunnel/linux/64bit/ltcomponent.zip && \
    unzip ltcomponent.zip && \
    rm ltcomponent.zip && \
    mv /ltcomponent /LT && \
    chmod +x /LT
ENTRYPOINT [ "/LT" ]

