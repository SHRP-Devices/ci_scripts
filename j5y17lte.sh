#!/bin/bash
git clone https://github.com/SHRP-Devices/device_samsung_j5y17lte.git device/samsung/j5y17lte
. build/envsetup.sh
lunch omni_j5y17lte-eng
mka recoveryimage
