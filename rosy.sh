#!/bin/bash
git clone https://github.com/SHRP-Devices/recovery-device-xiaomi-rosy.git device/xiaomi/rosy
. build/envsetup.sh
lunch omni_rosy-eng
mka recoveryimage
