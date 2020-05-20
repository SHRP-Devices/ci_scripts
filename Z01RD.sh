#!/bin/bash
git clone https://github.com/shrp-devices/device_asus_Z01RD device/asus/ASUS_Z01RD
. build/envsetup.sh
lunch omni_ASUS_Z01RD-eng
mka recoveryimage
