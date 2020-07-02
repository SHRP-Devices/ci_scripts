#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_kenzo device/xiaomi/kenzo
. build/envsetup.sh
lunch omni_kenzo-eng
mka recoveryimage
