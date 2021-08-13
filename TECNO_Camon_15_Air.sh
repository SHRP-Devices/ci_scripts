#!/bin/bash

# Fetch device tree
git clone https://github.com/SHRP-Devices/TECNO-CD6-SHRP device/TECNO/TECNO_Camon_15_Air

# Setup the build
. build/envsetup.sh
lunch omni_CD6-eng

# Actual build