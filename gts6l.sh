#!/bin/bash

# Fetch device tree
git clone https://github.com/SHRP-Devices/shrp_device_samsung_gts6l device/samsung/gts6l

# Setup the build
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_gts6l-eng

# Actual build
mka recoveryimage