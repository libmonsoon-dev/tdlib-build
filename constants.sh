#!/usr/bin/env bash

DOCKER_FILES_COUNT=$(find . -name Dockerfile | wc -l)

REPO='libmonsoondev/tdlib-build'

ALPINE='alpine'
ALPINE3_9='alpine3.9'

ALPINE_GOLANG='alpine-golang'
ALPINE_GOLANG1_12_1='alpine-golang1.12.1'
ALPINE3_9_GOLANG='alpine3.9-golang'
ALPINE3_9_GOLANG1_12_1='alpine3.9-golang1.12.1'

UBUNTU='ubuntu'
UBUNTU18_04='ubuntu18.04'

UBUNTU_GOLANG='ubuntu-golang'
UBUNTU_GOLANG1_12_1='ubuntu-golang1.12.1'
UBUNTU18_04_GOLANG='ubuntu18.04-golang'
UBUNTU18_04_GOLANG1_12_1='ubuntu18.04-golang1.12.1'

DEBUG='debug'
DEBUG_ALPINE='debug-alpine'
DEBUG_ALPINE3_9='debug-alpine3.9'

DEBUG_ALPINE_GOLANG='debug-alpine-golang'
DEBUG_ALPINE_GOLANG1_12_1='debug-alpine-golang1.12.1'
DEBUG_ALPINE3_9_GOLANG='debug-alpine3.9-golang'
DEBUG_ALPINE3_9_GOLANG1_12_1='debug-alpine3.9-golang1.12.1'

DEBUG_UBUNTU='debug-ubuntu'
DEBUG_UBUNTU18_04='debug-ubuntu18.04'

DEBUG_UBUNTU_GOLANG='debug-ubuntu-golang'
DEBUG_UBUNTU_GOLANG1_12_1='debug-ubuntu-golang1.12.1'
DEBUG_UBUNTU18_04_GOLANG='debug-ubuntu18.04-golang'
DEBUG_UBUNTU18_04_GOLANG1_12_1='debug-ubuntu18.04-golang1.12.1'
