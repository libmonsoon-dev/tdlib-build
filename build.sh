#!/usr/bin/env bash

. pull.sh

set -e

. constants.sh

CURRENT=1

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t "${REPO}" \
    -t "${REPO}:${ALPINE}" \
    -t "${REPO}:${ALPINE3_9}" \
    --pull \
    ./Release/alpine3.9/

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t "${REPO}:${ALPINE_GOLANG}" \
    -t "${REPO}:${ALPINE_GOLANG1_12_1}" \
    -t "${REPO}:${ALPINE3_9_GOLANG}" \
    -t "${REPO}:${ALPINE3_9_GOLANG1_12_1}" \
    --pull \
    ./Release/alpine3.9/golang1.12.1/

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t "${REPO}:${UBUNTU}" \
    -t "${REPO}:${UBUNTU18_04}" \
    --pull \
    ./Release/ubuntu18.04

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t "${REPO}:${UBUNTU_GOLANG}" \
    -t "${REPO}:${UBUNTU_GOLANG1_12_1}" \
    -t "${REPO}:${UBUNTU18_04_GOLANG}" \
    -t "${REPO}:${UBUNTU18_04_GOLANG1_12_1}" \
    --pull \
    ./Release/ubuntu18.04/golang1.12.1/

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t "${REPO}:${DEBUG}" \
    -t "${REPO}:${DEBUG_ALPINE}" \
    -t "${REPO}:${DEBUG_ALPINE3_9}" \
    --pull \
    ./Debug/alpine3.9/

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t "${REPO}:${DEBUG_ALPINE_GOLANG}" \
    -t "${REPO}:${DEBUG_ALPINE_GOLANG1_12_1}" \
    -t "${REPO}:${DEBUG_ALPINE3_9_GOLANG}" \
    -t "${REPO}:${DEBUG_ALPINE3_9_GOLANG1_12_1}" \
    --pull \
    ./Debug/alpine3.9/golang1.12.1/

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t "${REPO}:${DEBUG_UBUNTU}" \
    -t "${REPO}:${DEBUG_UBUNTU18_04}" \
    --pull \
    ./Debug/ubuntu18.04

echo "Building... [$((CURRENT++))/${DOCKER_FILES_COUNT}]"
docker build \
    -t "${REPO}:${DEBUG_UBUNTU_GOLANG}" \
    -t "${REPO}:${DEBUG_UBUNTU_GOLANG1_12_1}" \
    -t "${REPO}:${DEBUG_UBUNTU18_04_GOLANG}" \
    -t "${REPO}:${DEBUG_UBUNTU18_04_GOLANG1_12_1}" \
    --pull \
    ./Debug/ubuntu18.04/golang1.12.1/
