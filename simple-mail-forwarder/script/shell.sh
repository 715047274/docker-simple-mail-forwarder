#!/bin/bash

NAME="zixia/simple-mail-forwarder"
TAG=''
[ -n "$1" ] && TAG=":$1" && shift

echo "docker run --rm -it \"$NAME$TAG\" /bin/bash"
docker run --rm -it "$NAME$TAG" /bin/bash
