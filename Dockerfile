FROM ubuntu
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget unzip
RUN wget https://downloads.lambdatest.com/tunnel/alpha/linux/64bit/LT_Linux.zip && \ 
    unzip LT_Linux.zip && \
    rm LT_Linux.zip && \
    chmod +x /LT
 
ENTRYPOINT [ "/LT" ]

