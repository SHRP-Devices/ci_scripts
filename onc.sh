#!/bin/bash
git clone https://github.com/SHRP-Devices/android_device_xiaomi_onc --depth=1 device/xiaomi/onc
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
source build/envsetup.sh
lunch omni_onc-eng
mka recoveryimage
