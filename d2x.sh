#!/bin/bash

# Fetch device tree
git clone https://github.com/SHRP-Devices/shrp_device_samsung_d2x device/samsung/d2x

# Setup the build
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_d2x-eng

# Actual build
mka recoveryimage