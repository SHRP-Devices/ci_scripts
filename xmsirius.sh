#!/bin/bash
git clone https://github.com/SHRP-Devices/android_device_xiaomi_xmsirius device/xiaomi/xmsirius
. build/envsetup.sh
lunch omni_xmsirius-eng
mka recoveryimage
