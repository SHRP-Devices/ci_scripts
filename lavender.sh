#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_lavender device/xiaomi/lavender
. build/envsetup.sh
lunch omni_lavender-eng
mka recoveryimage
