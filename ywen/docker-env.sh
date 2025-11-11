#!/bin/sh

set -ex

UBUNTU_VER="$1"
: "${UBUNTU_VER:?not set}"

docker run \
    --name "ansible-dev" \
    --rm \
    --interactive \
    --tty \
    --volume "$PWD:/ansible" \
    --workdir /ansible \
    "ubuntu:${UBUNTU_VER}" \
    /bin/bash
