#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_wayne device/xiaomi/wayne
git clone https://github.com/TeamWin/android_device_qcom_common -b android-8.0 device/qcom/common
source build/envsetup.sh
lunch omni_wayne-eng
mka recoveryimage
