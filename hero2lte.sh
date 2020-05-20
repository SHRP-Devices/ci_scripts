#!/bin/bash
git clone https://github.com/SHRP-Devices/android_device_samsung_hero2lte device/samsung/hero2lte
. build/envsetup.sh
lunch omni_hero2lte-eng
mka recoveryimage
