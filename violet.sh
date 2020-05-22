#!/bin/bash

git clone https://github.com/SHRP-Devices/device_xiaomi_violet device/xiaomi/violet
. build/envsetup.sh
lunch omni_violet-eng
mka recoveryimage
