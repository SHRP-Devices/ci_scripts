#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_riva device/xiaomi/riva
. build/envsetup.sh
lunch omni_riva-eng
mka recoveryimage
