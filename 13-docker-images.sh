#!/bin/bash

## Build docker images

cd "${BASH_SOURCE%/*}/Dockerfiles" && ./make-docker-images.sh && cd ..
