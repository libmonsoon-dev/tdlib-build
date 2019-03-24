#!/usr/bin/env bash

. ./build.sh

TAGS=( $(docker images ${REPO} | grep ${REPO} | grep -v "<none>" | awk '{ print $1":"$2 }') )
TAGS_LEN=${#TAGS[@]}

for (( i=0; i<$TAGS_LEN; i++ ))
do
    task="docker push ${TAGS[$i]}"
    echo "${task} [$(($i+1))/${TAGS_LEN}]"
    ${task}
done
