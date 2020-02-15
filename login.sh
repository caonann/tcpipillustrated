#!/bin/bash
SVRNAME=${1}
if [ -z ${SVRNAME} ]
then
    echo "eg: ./login.sh containername"
	exit 0
fi

ContainerID=$(docker container ls|grep ${SVRNAME}|awk '{print $1}')
docker exec -it ${ContainerID}  bash

