#!/bin/bash
git clone https://github.com/SHRP-Devices/recovery_device_xiaomi_santoni.git device/xiaomi/santoni
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
. build/envsetup.sh
lunch omni_oneplus3-eng
mka recoveryimage
