#!/usr/bin/env bash

set -e

REPO='libmonsoondev/tdlib-build'

DOCKER_FILES_COUNT=$(find . -name Dockerfile | wc -l)
CURRENT=1

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t ${REPO} \
    -t ${REPO}:alpine \
    -t ${REPO}:alpine3.9 \
    --pull \
    ./Release/alpine3.9/

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t ${REPO}:alpine-golang \
    -t ${REPO}:alpine-golang1.12.1 \
    -t ${REPO}:alpine3.9-golang \
    -t ${REPO}:alpine3.9-golang1.12.1 \
    --pull \
    ./Release/alpine3.9/golang1.12.1/

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t ${REPO}:ubuntu \
    -t ${REPO}:ubuntu18.04 \
    --pull \
    ./Release/ubuntu18.04

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t ${REPO}:ubuntu-golang \
    -t ${REPO}:ubuntu-golang1.12.1 \
    -t ${REPO}:ubuntu18.04-golang \
    -t ${REPO}:ubuntu18.04-golang1.12.1 \
    --pull \
    ./Release/ubuntu18.04/golang1.12.1/

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t ${REPO}:debug \
    -t ${REPO}:debug-alpine \
    -t ${REPO}:debug-alpine3.9 \
    --pull \
    ./Debug/alpine3.9/

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t ${REPO}:debug-alpine-golang \
    -t ${REPO}:debug-alpine-golang1.12.1 \
    -t ${REPO}:debug-alpine3.9-golang \
    -t ${REPO}:debug-alpine3.9-golang1.12.1 \
    --pull \
    ./Debug/alpine3.9/golang1.12.1/

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t ${REPO}:debug-ubuntu \
    -t ${REPO}:debug-ubuntu18.04 \
    --pull \
    ./Debug/ubuntu18.04

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t ${REPO}:debug-ubuntu-golang \
    -t ${REPO}:debug-ubuntu-golang1.12.1 \
    -t ${REPO}:debug-ubuntu18.04-golang \
    -t ${REPO}:debug-ubuntu18.04-golang1.12.1 \
    --pull \
    ./Debug/ubuntu18.04/golang1.12.1/
