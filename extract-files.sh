#!/bin/sh

VENDOR=pantech
DEVICE=ef49k

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-blobs.txt | grep -v ^# | grep -v ^$ `; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp ~/good-rom/system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
