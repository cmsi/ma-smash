#!/bin/sh

SCRIPT_DIR=$(dirname $0)
VERSION=$(sh $SCRIPT_DIR/version.sh)
VERSION_BASE=$(echo $VERSION | sed 's/-/ /g' | awk '{print $1}')
BUILD_DIR="smash_$VERSION_BASE"

echo "VERSION: $VERSION"
echo "VERSION_BASE: $VERSION_BASE"
echo "SCRIPT_DIR: $SCRIPT_DIR"
echo "BUILD_DIR: $BUILD_DIR"

DATA_DIR="/data/src"
echo "DATA_DIR: $DATA_DIR"

if [ -f "$DATA_DIR/smash-$VERSION_BASE.tgz" ]; then :; else
  echo "Error: $DATA_DIR/smash-$VERSION_BASE.tgz not found"
  exit 127
fi
if [ -d "$BUILD_DIR" ]; then
  echo "Error: $BUILD_DIR already exists"
  exit 127
fi

set -x

tar zxf $DATA_DIR/smash-$VERSION_BASE.tgz
mv smash $BUILD_DIR 
tar zcf smash_$VERSION_BASE.orig.tar.gz $BUILD_DIR
cp -frp $SCRIPT_DIR/debian $BUILD_DIR
cd $BUILD_DIR
