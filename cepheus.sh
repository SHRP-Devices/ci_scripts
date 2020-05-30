#!/bin/bash
git clone https://github.com/SHRP-Devices/android_device_xiaomi_cepheus device/xiaomi/cepheus
. build/envsetup.sh
lunch omni_cepheus-eng
mka recoveryimage
