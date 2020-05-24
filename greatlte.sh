#!/bin/bash

# Fetch device tree
git clone https://github.com/SHRP-Devices/device_samsung_greatlte device/samsung/greatlte

# Fetch the dependencies
[ ! -d "hardware/samsung" ] && git clone --depth=1 -b lineage-16.0 https://github.com/TeamWin/android_hardware_samsung hardware/samsung
[ ! -d "kernel/samsung/universal8895" ] && git clone --depth=1 -b android-9.0 https://github.com/corsicanu/android_kernel_samsung_universal8895 kernel/samsung/universal8895

# Remove conflicts


# Setup the build
. build/envsetup.sh
lunch omni_greatlte-eng

# Actual build
mka recoveryimage

