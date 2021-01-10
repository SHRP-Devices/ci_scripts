#!/bin/bash
git clone https://github.com/SHRP-Devices/device_oneplus_enchilada device/oneplus/enchilada
. build/envsetup.sh
lunch omni_enchilada-eng
mka recoveryimage
