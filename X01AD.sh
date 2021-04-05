#!/bin/bash

git clone https://github.com/SHRP-Devices/device_asus_x01ad device/asus/X01AD

# Setup the build
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_X01AD-eng

# Actual build
mka recoveryimage
