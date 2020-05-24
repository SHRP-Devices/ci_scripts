#!/bin/bash

# Fetch device tree
git clone --depth=1 -b android-9.0 https://github.com/SHRP-Devices/device_samsung_a7y17lte device/samsung/a7y17lte

# Fetch the dependencies
[ ! -d "hardware/samsung" ] && git clone --depth=1 -b lineage-16.0 https://github.com/TeamWin/android_hardware_samsung hardware/samsung
[ ! -d "kernel/samsung/universal7880" ] && git clone --depth=1 -b android-9.0 https://github.com/corsicanu/android_kernel_samsung_universal7880 kernel/samsung/universal7880

# Remove conflicts


# Setup the build
. build/envsetup.sh
lunch omni_a7y17lte-eng

# Actual build
mka recoveryimage

