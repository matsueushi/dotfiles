#!/bin/bash

echo "install julia..."
JULIA_PATH=/usr/local/julia
JULIA_BIN_PATH=/usr/local/bin/julia
JULIA_VERSION=1.0.5

curl -o /tmp/julia.tar.gz "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_VERSION:0:3}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz"
sudo mkdir -p "${JULIA_PATH}"
sudo tar -xzf /tmp/julia.tar.gz -C "${JULIA_PATH}"
sudo ln -fs "${JULIA_PATH}/julia-${JULIA_VERSION}/bin/julia" "${JULIA_BIN_PATH}"
