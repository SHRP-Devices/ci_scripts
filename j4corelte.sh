#!/bin/bash
git clone https://github.com/SHRP-Devices/device_samsung_msm8917-common device/samsung/msm8917-common
git clone https://github.com/SHRP-Devices/device_samsung_j4corelte device/samsung/j4corelte
. build/envsetup.sh
lunch omni_j4corelte-eng
mka recoveryimage
