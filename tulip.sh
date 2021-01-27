#!/bin/bash

# Fetch device tree
git clone https://github.com/SHRP-Devices/android_device_xiaomi_tulip-SHRP -b android-9.0 device/xiaomi/tulip

# Setup the build
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_tulip-eng

# Actual build
mka recoveryimage
