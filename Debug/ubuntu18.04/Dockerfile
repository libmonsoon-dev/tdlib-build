FROM ubuntu:18.04

RUN apt update \
    && apt upgrade -y \
    && apt install -y \
        git \
        gcc \
        libc-dev \
        g++ \
        make \
        cmake \
        libssl-dev \
        gperf \
        zlib1g-dev \
        libreadline-dev \
    && rm -rf /var/cache/apt/*=

RUN git clone https://github.com/tdlib/td.git \
    && cd td \
    && mkdir build \
    && cd build \
    && cmake -DCMAKE_BUILD_TYPE=Debug .. \
    && cmake --build . \
    && make install 2>&1 | tee install.log