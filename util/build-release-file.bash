#!/bin/bash
ME=$(basename $0)

function usage() {
    echo "Usage: ${ME} [version]"
    exit 1
}

if [ -z "${1}" ]; then
    usage
fi

version=${1}

rm -rf msys2-favorite-binary
mkdir msys2-favorite-binary
cp -r ../bin/* msys2-favorite-binary
cp 00-install.bat msys2-favorite-binary
zip -r msys2-favorite-binary-${version}.zip msys2-favorite-binary
