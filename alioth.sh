#!/bin/bash
echo "======================"
echo "Building SHRP"
echo "======================"
git clone https://github.com/SHRP-Devices/android_device_xiaomi_alioth device/xiaomi/alioth
. build/envsetup.sh
lunch twrp_alioth-eng
mka adbd bootimage
