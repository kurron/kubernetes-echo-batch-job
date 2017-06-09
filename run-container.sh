#!/bin/bash

HOST=${1:-localhost}
VHOST=${2:-/}
USERNAME=${3:-guest}
PASSWORD=${4:-guest}
MESSAGE_COUNT=${5:-524288}
PAYLOAD_SIZE=${6:-1024}
THREAD_COUNT=${7:-32}

CMD="docker run \
            --cpus 1 \
            --interactive  \
            --name echo \
            --network host \
            --rm \
            kurron/date-echo:latest \
            --number-of-messages=${MESSAGE_COUNT}"

echo ${CMD}
${CMD}
