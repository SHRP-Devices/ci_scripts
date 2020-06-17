#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_wayne device/xiaomi/wayne
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
source build/envsetup.sh
lunch omni_wayne-eng
mka recoveryimage
