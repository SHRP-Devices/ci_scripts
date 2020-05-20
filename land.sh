#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_land device/xiaomi/land
. build/envsetup.sh
lunch omni_land-eng
mka recoveryimage
