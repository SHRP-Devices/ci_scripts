#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_dipper device/xiaomi/dipper
. build/envsetup.sh
lunch omni_dipper-eng
mka recoveryimage
