#!/bin/bash
git clone https://github.com/SHRP-Devices/android_device_xiaomi_xmsirius device/xiaomi/xmsirius
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
. build/envsetup.sh
lunch omni_xmsirius-eng
mka recoveryimage
