#!/bin/bash

SERVICE=redis
MASTER=${SERVICE}-0

if [ ${HOSTNAME} == ${MASTER} ]; then
    redis-server /config/redis.conf
else
    redis-server /config/redis.conf --slaveof ${MASTER}.${SERVICE} 6379
fi
