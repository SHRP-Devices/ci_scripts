#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_grus device/xiaomi/grus
. build/envsetup.sh
lunch omni_grus-eng
mka adbd recoveryimage
