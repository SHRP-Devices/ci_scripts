#!/bin/bash
git clone https://github.com/SHRP-Devices/device_coolpad_c103.git -b treble
. build/envsetup.sh
lunch omni_c103-eng
mka recoveryimage
