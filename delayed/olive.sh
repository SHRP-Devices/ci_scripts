#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_olive device/xiaomi/olive
. build/envsetup.sh
lunch omni_olive-eng
mka recoveryimage
