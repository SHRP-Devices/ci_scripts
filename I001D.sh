#!/bin/bash

# Fetch device tree
git clone https://github.com/SHRP-Devices/android_device_asus_I001D-SHRP device/asus/I001D

# Setup the build
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_I001D-eng

# Actual build
mka recoveryimage
