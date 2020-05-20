#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_whyred device/xiaomi/whyred
. build/envsetup.sh
lunch omni_whyred-eng
mka recoveryimage
