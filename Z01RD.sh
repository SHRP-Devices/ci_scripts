#!/bin/bash
git clone https://github.com/shrp-devices/device_asus_Z01RD device/asus/Z01RD
. build/envsetup.sh
lunch omni_Z01RD-eng
mka recoveryimage
