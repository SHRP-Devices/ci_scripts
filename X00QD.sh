#!/bin/bash
#Build X00QD
git clone https://github.com/SHRP-Devices/shrp_device_asus_X00Q -b SHRP device/asus/X00Q
git clone https://github.com/TeamWin/android_device_qcom_common -b android-9.0 device/qcom/common
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_X00Q-eng
mka recoveryimage | tee SHRP_X00QD_Official_$(date +"%Y%m%d_%H.%M")GMT8.txt
