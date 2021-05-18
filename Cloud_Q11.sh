#!/bin/bash

# Fetch device tree
git clone https://github.com/SHRP-Devices/device_intex_Cloud_Q11.git -b android-9.0 device/intex/Cloud_Q11

# Setup the build
. build/envsetup.sh
lunch omni_Cloud_Q11-eng

# Actual build
mka recoveryimage