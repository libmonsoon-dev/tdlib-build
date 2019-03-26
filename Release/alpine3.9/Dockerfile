FROM alpine:3.9

RUN apk update \
    && apk add --no-cache \
        git \
        gcc \
        libc-dev \
        g++ \
        make \
        cmake \
        "openssl-dev>1.1" \
        gperf \
        zlib-dev \
        readline-dev \
    && rm -rf /var/cache/apk/*=

RUN git clone https://github.com/tdlib/td.git \
    && cd td \
    && mkdir build \
    && cd build \
    && cmake -DCMAKE_BUILD_TYPE=Release .. \
    && cmake --build . \
    && make install 2>&1 | tee install.log