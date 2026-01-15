#!/bin/bash
set -euo pipefail

multipass launch \
    -vvvv \
    --name ubuntu-vm \
    --cpus 1 \
    --memory 1G \
    --disk 10G \
    --cloud-init ./cloud-config.yaml \
    --timeout 900