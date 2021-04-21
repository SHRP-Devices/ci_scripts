#!/bin/bash
git clone https://github.com/SHRP-Devices/android_device_samsung_j5y17lte.git device/samsung/j5y17lte -b android-9.0_shrp
source build/envsetup.sh
lunch omni_j5y17lte-eng
mka recoveryimage
