#!/bin/bash
git clone https://github.com/SHRP-Devices/android_device_xiaomi_onclite.git --depth=1 device/xiaomi/onclite
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
git clone https://github.com/omnirom/android_device_qcom_caf-sepolicy.git -b android-9.0 device/qcom/sepolicy
source build/envsetup.sh
lunch omni_onclite-eng
mka recoveryimage
