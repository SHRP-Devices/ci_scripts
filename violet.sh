#!/bin/bash
git clone https://github.com/SHRP-Devices/android_recovery_xiaomi_violet.git device/xiaomi/violet
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
. build/envsetup.sh
lunch omni_violet-eng
mka recoveryimage
