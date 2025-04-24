#!/bin/bash

podman build \
    --build-arg FEDORA_VERSION=42 \
    --build_arg BUILD_DATE=$(date -u +%Y-%m-%dT%H:%M:%SZ) \
    --build-arg VCS_REF=$(git rev-parse --short HEAD) \
    --build-arg VERSION=1.0.0 \
    --tag base .