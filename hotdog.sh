#!/bin/bash
git clone https://github.com/SHRP-Devices/android_device_oneplus_hotdog.git device/oneplus/hotdog -b android-10.0_shrp
source build/envsetup.sh
lunch omni_hotdog-eng
mka recoveryimage
