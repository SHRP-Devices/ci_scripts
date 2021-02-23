#!/bin/bash
git clone https://github.com/SHRP-Devices/device_zuk_z2_plus.git device/zuk/z2_plus
. build/envsetup.sh
lunch omni_z2_plus-eng
mka recoveryimage
