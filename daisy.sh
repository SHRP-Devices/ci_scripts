#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_daisy_shrp device/xiaomi/daisy
. build/envsetup.sh
lunch omni_daisy-eng
mka recoveryimage
