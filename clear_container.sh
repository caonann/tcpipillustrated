#!/bin/bash
docker container ls -a|awk '{print $1}'|grep -v CONTAINER|grep -v grep|xargs docker container rm
