#!/usr/bin/env bash

. constants.sh

for (( i=0; i<$TAGS_LEN; i++ ))
do
    task="docker pull ${REPO}:${TAGS[$i]}"
    echo "${task} [$(($i+1))/${TAGS_LEN}]"
    ${task}
done