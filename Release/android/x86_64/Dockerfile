FROM libmonsoondev/android:ndk-r20 AS deps

ENV CC clang
ENV ANDROID_API 21

RUN apt update \
    && apt install -y make libfindbin-libs-perl

RUN wget -q https://www.openssl.org/source/openssl-1.1.1c.tar.gz && \
    tar -xvzf openssl-1.1.1c.tar.gz && \
    mv openssl-1.1.1c /opt/openssl && \
    rm openssl-1.1.1c.tar.gz

RUN cd /opt/openssl && \
    ./Configure android-x86_64 -D__ANDROID_API__=$ANDROID_API && \
    make

RUN wget -q http://zlib.net/zlib-1.2.11.tar.gz && \
    tar -xvzf zlib-1.2.11.tar.gz && \
    mv zlib-1.2.11 /opt/zlib && \
    rm zlib-1.2.11.tar.gz

ENV CC x86_64-linux-android21-clang
ENV CXX x86_64-linux-android21-clang++
ENV RANLIB x86_64-linux-android-ranlib
ENV LD x86_64-linux-android-ld
ENV AR x86_64-linux-android-ar
ENV ARFLAGS cr
ENV CHOST x86_64-linux-android

RUN cd /opt/zlib && \
    ./configure && \
    make

FROM libmonsoondev/android:ndk-r20

RUN apt update \
    && apt install -y \
        cmake \
        gperf \
        libreadline-dev \
        zlib1g-dev \
        libssl-dev \
        ccache \
        unzip \
        g++

RUN wget -q https://github.com/tdlib/td/archive/v1.4.0.tar.gz && \
     tar -xvzf v1.4.0.tar.gz && \
     mv td-1.4.0 /opt/tdlib && \
     rm v1.4.0.tar.gz

COPY --from=deps /opt/zlib /opt/zlib
COPY --from=deps /opt/openssl /opt/openssl

RUN mkdir /opt/tdlib/build_native \
    && cd /opt/tdlib/build_native \
    && cmake .. \
        -DCMAKE_BUILD_TYPE=Release \
        -DZLIB_LIBRARY=/opt/zlib/libz.a \
        -DZLIB_INCLUDE_DIR=/opt/zlib \
    && cmake --build . --target prepare_cross_compiling \
    && cmake --build . --target generate_mime_types_gperf

ENV ANDROID_API 21
ENV CC x86_64-linux-android21-clang
ENV CXX x86_64-linux-android21-clang++
ENV RANLIB x86_64-linux-android-ranlib
ENV LD x86_64-linux-android-ld
ENV AR x86_64-linux-android-ar
ENV ARFLAGS cr
ENV CHOST x86_64-linux-android
ENV OPENSSL_ROOT_DIR /opt/openssl

RUN mkdir /opt/tdlib/build \
    && cd /opt/tdlib/build \
    && cmake .. \
        -DCMAKE_BUILD_TYPE=Release \
        -DZLIB_LIBRARY=/opt/zlib/libz.a \
        -DZLIB_INCLUDE_DIR=/opt/zlib \
    && cp -r ../build_native/tdutils/generate ./tdutils \
    && cp -r ../build_native/td/generate ./td \
    && cmake --build . --target tdjson_static
