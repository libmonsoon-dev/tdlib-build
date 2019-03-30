FROM ubuntu:18.04

LABEL maintainer="Daniil Stepanenko <daniil.stepanenko.96@gmail.com>" \
    CMAKE_BUILD_TYPE=Debug \
    "tdlib release"=v1.3.0

RUN apt update \
    && apt install -y \
        git \
        gcc \
        libc-dev \
        g++ \
        make \
        cmake \
        libssl-dev=1.1.0\* \
        gperf \
        zlib1g-dev \
        libreadline-dev \
    && rm -rf /var/cache/apt/*=

RUN git clone --branch=v1.3.0 --depth=1 https://github.com/tdlib/td.git \
    && cd td \
    && mkdir build \
    && cd build \
    && cmake -DCMAKE_BUILD_TYPE=Debug .. \
    && cmake --build . \
    && make install 2>&1 | tee install.log