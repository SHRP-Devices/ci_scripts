#!/bin/bash
git clone https://github.com/SHRP-Devices/device_samsung_msm8917-common device/samsung/msm8917-common
git clone https://github.com/SHRP-Devices/device_samsung_j6primelte device/samsung/j6primelte
. build/envsetup.sh
lunch omni_j6primelte-eng
mka recoveryimage
