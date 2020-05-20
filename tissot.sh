#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_tissot device/xiaomi/tissot
. build/envsetup.sh
lunch omni_tissot-eng
mka recoveryimage
