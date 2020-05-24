#!/bin/bash
git clone https://github.com/SHRP-Devices/device_samsung_msm8917-common device/samsung/msm8917-common
git clone https://github.com/SHRP-Devices/device_samsung_j4primelte device/samsung/j4primelte
. build/envsetup.sh
lunch omni_j4primelte-eng
mka recoveryimage
