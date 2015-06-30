#!/bin/sh

ROOTDIR="."
LIBDIR=""
DOCKER_TEMPLATE="docker.io/imunes/vroot:base"

VER=`uname -r | cut -d "." -f 1`
OS=`uname -s`

if [ "$OS" = "Linux" ]
then
    docker pull $DOCKER_TEMPLATE
else
    sh $ROOTDIR/$LIBDIR/scripts/prepare_vroot_$VER\.sh $*
fi

