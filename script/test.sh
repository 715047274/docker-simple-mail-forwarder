#!/bin/bash
#
# maintainer: Zhuohuan LI <zixia@zixia.net>
#

OWNER="zixia"
NAME="simple-mail-forwarder"
IMAGENAME="$OWNER/$NAME"

TAG='' && [ -n "$1" ] && TAG=":$1" && shift

CMD2="docker run --rm --name $NAME ${IMAGENAME}${TAG} test"

echo ">> Run $CMD1"
$CMD1

[ $? -eq 0 ] && {
    echo ">> Run $CMD2"
    $CMD2
}
