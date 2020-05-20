#!/bin/bash
git clone https://github.com/SHRP-Devices/device_oneplus_oneplus3 device/oneplus/oneplus3
. build/envsetup.sh
lunch omni_oneplus3-eng
mka recoveryimage
