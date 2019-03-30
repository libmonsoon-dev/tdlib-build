FROM alpine:3.9

LABEL maintainer="Daniil Stepanenko <daniil.stepanenko.96@gmail.com>" \
    CMAKE_BUILD_TYPE=Release \
    "tdlib release"=v1.3.0

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

RUN git clone --branch=v1.3.0 --depth=1 https://github.com/tdlib/td.git \
    && cd td \
    && mkdir build \
    && cd build \
    && cmake -DCMAKE_BUILD_TYPE=Release .. \
    && cmake --build . \
    && make install 2>&1 | tee install.log