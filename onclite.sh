#!/bin/bash
git clone https://github.com/SHRP-Devices/android_device_xiaomi_onclite.git --depth=1 device/xiaomi/onclite
source build/envsetup.sh
lunch omni_onclite-eng
mka recoveryimage
