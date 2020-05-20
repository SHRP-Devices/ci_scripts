#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_davinci device/xiaomi/davinci
. build/envsetup.sh
lunch omni_davinci-eng
mka recoveryimage
