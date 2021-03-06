#!/bin/bash
git clone https://github.com/HemantSachdeva/shrp_device_xiaomi_laurel_sprout.git device/xiaomi/laurel_sprout
. build/envsetup.sh
lunch omni_laurel_sprout-eng
mka recoveryimage
