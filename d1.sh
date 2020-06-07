#!/bin/bash

# Fetch device tree
git clone https://github.com/SHRP-Devices/shrp_device_samsung_d1 device/samsung/d1

# Setup the build
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_d1-eng

# Actual build
mka recoveryimage