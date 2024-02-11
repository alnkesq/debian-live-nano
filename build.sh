#!/bin/bash

# Create output directory
mkdir -p output

# Build the iso
docker run --privileged --rm -v "$PWD/output":/output -v "$PWD/supportFiles":/supportFiles debian:stable /supportFiles/build.sh 
