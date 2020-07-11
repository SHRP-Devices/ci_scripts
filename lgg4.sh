#!/bin/bash
git clone https://github.com/SHRP-Devices/device_lge_g4.git device/lge/g4 -b android-9.0_shrp
git clone https://github.com/Suicide-Squirrel/Titan-Kernel-LG-G4.git kernel/lge/g4 -b android-9.0_sfx
source build/envsetup.sh
lunch omni_lg4-eng
mka recoveryimage
