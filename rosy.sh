#!/bin/bash
git clone https://github.com/SHRP-Devices/recovery-device-xiaomi-rosy.git device/xiaomi/rosy
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
cd vendor/qcom/opensource/commonsys/
rm -rf cryptfs_hw
rm Android.bp
wget https://raw.githubusercontent.com/ElytrA8/cryptfs_fixup/main/Android.bp
cd ../../../..
. build/envsetup.sh
lunch omni_rosy-eng
mka recoveryimage
