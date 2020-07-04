#!/bin/bash
git clone https://github.com/SHRP-Devices/kernel_realme_rmx1851.git kernel/realme/sdm710
git clone https://github.com/SHRP-Devices/device_realme_RMX1851.git device/realme/RMX1851
. build/envsetup.sh
lunch omni_RMX1851-eng
mka recoveryimage
