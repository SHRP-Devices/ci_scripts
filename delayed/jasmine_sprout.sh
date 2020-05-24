#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_jasmine_sprout device/xiaomi/jasmine_sprout
. build/envsetup.sh
lunch omni_jasmine_sprout-eng
mka recoveryimage
