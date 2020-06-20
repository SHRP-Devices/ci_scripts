#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_riva device/xiaomi/riva
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
. build/envsetup.sh
lunch omni_riva-eng
rm -rf device/qcom*
mka recoveryimage
