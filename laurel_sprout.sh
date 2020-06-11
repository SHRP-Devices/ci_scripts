#!/bin/bash
git clone https://github.com/LineageOS/android_hardware_qcom_bootctrl.git -b lineage-16.0 hardware/qcom/bootctrl
git clone https://github.com/oddlyspaced/shrp_xiaomi_laurel_sprout.git device/xiaomi/laurel_sprout
. build/envsetup.sh
lunch omni_laurel_sprout-eng
mka bootimage
