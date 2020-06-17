#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_daisy_shrp device/xiaomi/daisy
git clone https://github.com/TeamWin/android_device_qcom_common -b android-9.0 device/qcom/common
. build/envsetup.sh
lunch omni_daisy-eng
mka recoveryimage
