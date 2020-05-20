#!/bin/bash
git clone https://github.com/SHRP-Devices/android_kernel_realme_sdm710 -b lineage-17.1 kernel/realme/sdm710
git clone https://github.com/SHRP-Devices/device_realme_RMX1851 device/realme/RMX1851
. build/envsetup.sh
lunch omni_RMX1851-eng
mka recoveryimage
