#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_land device/xiaomi/land
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
. build/envsetup.sh
lunch omni_land-eng
mka recoveryimage
