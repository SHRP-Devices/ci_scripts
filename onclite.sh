#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_onclite.git -b android-9.0 --depth=1 device/xiaomi/onclite
source build/envsetup.sh
lunch omni_onclite-eng
mka recoveryimage
