#!bin/bash
git clone https://github.com/SHRP-Devices/recovery_device_xiaomi_vince device/xiaomi/vince
export ALLOW_MISSING_DEPENDENCIES=true; source build/envsetup.sh; lunch omni_vince-eng; mka recoveryimage;
echo "vincememe is done"
