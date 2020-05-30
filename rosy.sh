#!/bin/bash
git clone https://github.com/SHRP-Devices/recovery-device-xiaomi-rosy.git
. build/envsetup.sh
lunch omni_rosy-eng
mka recoveryimage
