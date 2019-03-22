FROM partlab/ubuntu-golang

RUN apt update \
    && apt upgrade -y \
    && apt install -y \
        git \
        gcc \
        libc-dev \
        g++ \
        make \
        cmake \
        gperf \
    && rm -rf /var/cache/apt/*=

RUN git clone https://github.com/tdlib/td.git \
    && cd td \
    && mkdir build \
    && cd build \
    && cmake -DCMAKE_BUILD_TYPE=Release .. \
    && cmake --build . -- -j2 \
    && make install