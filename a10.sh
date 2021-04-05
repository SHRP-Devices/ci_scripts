#!/bin/bash
git clone https://github.com/SHRP-Devices/device_samsung_a10 device/samsung/a10
. build/envsetup.sh
lunch omni_a10-eng
mka recoveryimage