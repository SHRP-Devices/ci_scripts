#!/bin/bash
git clone https://github.com/SHRP-Devices/recovery_device_xiaomi_raphael device/xiaomi/raphael 
. build/envsetup.sh
lunch omni_raphael-eng
mka recoveryimage
