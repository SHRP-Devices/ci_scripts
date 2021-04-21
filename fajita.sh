#!/bin/bash
git clone https://github.com/SHRP-Devices/android_device_oneplus_fajita_recovery device/oneplus/fajita -b android-9.0_shrp
source build/envsetup.sh
lunch omni_fajita-eng
mka recoveryimage
