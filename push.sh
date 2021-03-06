#!/usr/bin/env bash


. ./build.sh

for (( i=0; i<$TAGS_LEN; i++ ))
do
    task="docker push ${REPO}:${TAGS[$i]}"
    echo "${task} [$(($i+1))/${TAGS_LEN}]"
    ${task}
done
