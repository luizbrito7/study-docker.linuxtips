#!/bin/bash

curl -fsSL https://get.docker.com -o install-docker.sh

chmod +x install-docker.sh

./install-docker.sh

dockerd-rootless-setuptool.sh install

