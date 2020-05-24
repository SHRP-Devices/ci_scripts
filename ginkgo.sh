#!/bin/bash
git clone https://github.com/SHRP-Devices/device_xiaomi_ginkgo device/xiaomi/ginkgo
. build/envsetup.sh
lunch omni_ginkgo-eng
mka recoveryimage
