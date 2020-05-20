#!/bin/bash
git clone https://github.com/SHRP-Devices/device_samsung_herolte device/samsung/herolte
. build/envsetup.sh
lunch omni_herolte-eng
mka recoveryimage
