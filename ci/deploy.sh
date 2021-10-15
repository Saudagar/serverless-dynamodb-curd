#!/usr/bin/env bash

set -e -u -x

mv dependency-cache/node_modules source-code
curl -o- -L https://slss.io/install | VERSION=2.40.0 bash && source /root/.bashrc && cd source-code && serverless deploy