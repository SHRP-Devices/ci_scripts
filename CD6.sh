#!/bin/bash

# Fetch device tree
git clone https://github.com/SHRP-Devices/device_TECNO_CD6 device/TECNO/CD6

# Setup the build
. build/envsetup.sh
lunch omni_CD6-eng

# Actual build