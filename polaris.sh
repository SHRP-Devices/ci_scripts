#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_polaris device/xiaomi/polaris
. build/envsetup.sh
lunch omni_polaris-eng
mka recoveryimage
