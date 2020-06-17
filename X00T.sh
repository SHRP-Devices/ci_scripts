#!/bin/bash
git clone https://github.com/SHRP-Devices/device_asus_X00T.git -b android-9.0 device/asus/X00T
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
. build/envsetup.sh
lunch omni_X00T-eng
mka recoveryimage
