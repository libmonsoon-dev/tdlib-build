FROM alpine

RUN apk update \
    && apk add --no-cache \
        git \
        gcc \
        libc-dev \
        g++ \
        make \
        cmake \
        openssl-dev \
        gperf \
        zlib-dev \
    && rm -rf /var/cache/apk/*=

RUN git clone https://github.com/tdlib/td.git \
    && cd td \
    && mkdir build \
    && cd build \
    && cmake -DCMAKE_BUILD_TYPE=Debug .. \
    && cmake --build . \
    && make install -v 2>&1 | tee install.log