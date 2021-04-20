#!/bin/bash
git clone https://github.com/SHRP-Devices/device_samsung_a20s device/samsung/a20s
. build/envsetup.sh
lunch omni_a20s-eng
mka recoveryimage
