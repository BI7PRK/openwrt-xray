#!/bin/sh
hash=$1

sed "s/^PKG_SOURCE_VERSION.*/PKG_SOURCE_VERSION:=${hash}/g" Makefile > Makefile1
mv Makefile1 Makefile

version=$2

if [ -n "${version}" ]; then
    sed "s/^PKG_VERSION.*/PKG_VERSION:=${version}/g" Makefile > Makefile1
    mv Makefile1 Makefile
fi
