#!/bin/bash
git clone https://github.com/SHRP-Devices/device_samsung_a70q device/samsung/a70q
. build/envsetup.sh
lunch omni_a70q-eng
mka recoveryimage
