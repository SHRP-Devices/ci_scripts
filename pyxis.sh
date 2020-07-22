#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_pyxis device/xiaomi/pyxis -b shrp-2.x
. build/envsetup.sh
lunch omni_pyxis-eng
mka recoveryimage
