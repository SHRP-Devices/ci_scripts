#!/bin/bash
git clone https://github.com/SHRP-Devices/device_coolpad_c103.git -b treble device/coolpad/c103
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
. build/envsetup.sh
lunch omni_c103-eng
mka recoveryimage
