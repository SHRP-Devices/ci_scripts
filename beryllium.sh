#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_beryllium device/xiaomi/beryllium
. build/envsetup.sh
lunch omni_beryllium-eng
mka recoveryimage
