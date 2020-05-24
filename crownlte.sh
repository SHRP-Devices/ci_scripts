#!/bin/bash

# Fetch device tree
git clone https://github.com/SHRP-Devices/device_samsung_crownlte device/samsung/crownlte

# Fetch the dependencies
[ ! -d "hardware/samsung" ] && git clone --depth=1 -b lineage-16.0 https://github.com/TeamWin/android_hardware_samsung hardware/samsung
[ ! -d "kernel/samsung/universal9810" ] && git clone --depth=1 -b android-9.0 https://github.com/corsicanu/android_kernel_samsung_universal9810 kernel/samsung/universal9810

# Remove conflicts
# build/make/core/base_rules.mk:260: error: kernel/samsung/universal9820/drivers/staging/greybus/tools: MODULE.TARGET.EXECUTABLES.gb_loopback_test already defined by kernel/samsung/universal9810/drivers/staging/greybus/tools.
[ -d "kernel/samsung/universal9820" ] && rm -rf kernel/samsung/universal9820

# Setup the build
. build/envsetup.sh
lunch omni_crownlte-eng

# Actual build
mka recoveryimage

