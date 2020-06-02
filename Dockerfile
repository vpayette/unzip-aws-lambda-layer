FROM amazonlinux

RUN yum install zip -y
RUN yum install unzip -y
RUN mkdir -p /tmp/unzip-lambda-layer

CMD cd /tmp/unzip-lambda-layer && \
    mkdir -p bin && \
    mkdir -p lib && \
    cp /bin/unzip ./bin && \
    cp /usr/lib64/libbz2.so.1 ./lib && \
    zip -r unzip-lambda-layer.zip ./* && \
    rm -rf lib bin
