#!/bin/bash
git clone https://github.com/SHRP-Devices/device_lge_g4.git device/lge/g4 -b android-9.0_shrp
git clone https://github.com/LGgFour/kernel_lge_msm8992.git  kernel/lge/g4 -b android-9.0
source build/envsetup.sh
lunch omni_lg4-eng
mka recoveryimage
