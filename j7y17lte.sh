#!/bin/bash
git clone https://github.com/marchetto94/android_device_samsung_j7y17lte device/samsung/j7y17lte
. build/envsetup.sh
lunch omni_j7y17lte-eng
mka recoveryimage
