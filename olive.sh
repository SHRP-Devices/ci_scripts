#!/bin/bash

# Clone device tree
git clone https://github.com/SHRP-Devices/android_device_xiaomi_olive device/xiaomi/olive

# Setup the build
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_olive-eng

# Build SHRP!
mka recoveryimage
