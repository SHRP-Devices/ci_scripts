#!/bin/bash
git clone https://github.com/SHRP-Devices/Device_xiaomi_ysl.git device/xiaomi/ysl
. build/envsetup.sh
lunch omni_ysl-eng
mka recoveryimage
