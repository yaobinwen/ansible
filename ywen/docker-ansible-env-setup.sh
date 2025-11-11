#!/bin/sh

set -ex

export DEBIAN_FRONTEND=noninteractive
apt update
apt install -y man-db vim tree
apt install -y build-essential libssl-dev libffi-dev python3-dev python3-venv python3-pip
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
pip3 install setuptools_rust
. hacking/env-setup