#!/usr/bin/env bash

apt-get update
apt-get install -y apt-transport-https

echo 'DOCKER_OPTS="--insecure-registry chanart.bwh.harvard.edu:5002"' > /etc/default/docker
