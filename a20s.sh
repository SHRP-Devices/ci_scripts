#!/bin/bash
git clone https://github.com/SHRP-Devices/device_samsung_a20s device/samsung/a20s
git clone https://github.com/a2XX-dev/android_kernel_samsung_a20s -b sky kernel/samsung/a20s
source build/envsetup.sh
lunch omni_a20s-eng
mka recoveryimage
