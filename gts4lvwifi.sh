#!/bin/bash

# Fetch device tree
git clone https://github.com/SHRP-Devices/device_samsung_gts4lvwifi.git device/samsung/gts4lvwifi

# Setup for build
export ALLOW_MISSING_DEPENDENCIES=true
source build/envsetup.sh
lunch omni_gts4lvwifi-eng

# Build recovery
mka -j4 recoveryimage
