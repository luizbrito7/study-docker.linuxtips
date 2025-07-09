#!/bin/bash

curl -fsSL https://get.docker.com -o install-docker.sh

chdmod +x install-docker.sh

./install-docker.sh

dockerd-rootless-setuptool.sh install

