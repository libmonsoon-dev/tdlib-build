#!/usr/bin/env bash

. ./build.sh

TAGS=( $(docker image ls | grep -E "^${REPO} " | awk '{ print $1":"$2 }') )

for tag in "${TAGS[@]}"
do
    task="docker push ${tag}"
    echo ${task}:
    ${task}
done