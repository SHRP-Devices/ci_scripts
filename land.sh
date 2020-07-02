#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_land device/xiaomi/land
git clone https://github.com/TeamWin/android_device_qcom_common -b android-9.0 device/qcom/common
. build/envsetup.sh
lunch omni_land-eng
mka recoveryimage
