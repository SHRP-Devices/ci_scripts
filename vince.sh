#!bin/bash
git clone https://github.com/SHRP-Devices/recovery_device_xiaomi_vince device/xiaomi/vince
git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
export ALLOW_MISSING_DEPENDENCIES=true; source build/envsetup.sh; lunch omni_vince-eng; mka recoveryimage;
