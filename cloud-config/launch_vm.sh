#!/bin/bash
set -euo pipefail

multipass launch \
    -vvvv \
    --name ubuntu-vm \
    --cpus 1 \
    --memory 1G \
    --disk 20G \
    --cloud-init ${PWD}/cloud-config-lite.yaml \
    --timeout 900