#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_miatoll.git device/xiaomi/miatoll
. build/envsetup.sh
lunch omni_miatoll-eng
mka recoveryimage
