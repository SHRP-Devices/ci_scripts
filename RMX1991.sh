#!/bin/bash
echo "======================"
echo "Building SHRP"
echo "======================"
git clone https://github.com/SHRP-Devices/device_realme_RMX1911.git device/realme/RMX1911
. build/envsetup.sh
lunch omni_RMX1911-userdebug
mka recoveryimage
