#!/bin/bash
git clone https://github.com/SHRP-Devices/device_oneplus_oneplus3 device/oneplus/oneplus3
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
. build/envsetup.sh
lunch omni_oneplus3-eng
mka recoveryimage
