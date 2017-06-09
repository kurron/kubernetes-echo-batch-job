#!/bin/bash

# use the time as a tag
UNIXTIME=$(date +%s)

# docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker tag kubernetesechobatchjob_date-echo:latest kurron/date-echo:latest
docker tag kubernetesechobatchjob_date-echo:latest kurron/date-echo:${UNIXTIME}
docker images

# Usage:  docker push [OPTIONS] NAME[:TAG]
docker push kurron/date-echo:latest
docker push kurron/date-echo:${UNIXTIME}
