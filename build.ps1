#!/bin/bash

# Create output directory
New-Item -ItemType Directory -Path output -Force

# Build the iso
docker run --privileged --rm -v ${PWD}/output:/output -v ${PWD}/supportFiles:/supportFiles debian:stable /supportFiles/build.sh 
