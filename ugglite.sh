#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_ugglite device/xiaomi/ugglite
. build/envsetup.sh
lunch omni_ugglite-eng
mka recoveryimage
