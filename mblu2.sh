#!/bin/bash
git clone https://github.com/SHRP-Devices/device_meizu_mblu2 device/meizu/mblu2
rm -rf bootable/recovery/gui/theme/shrp_portrait_hdpi/portrait.xml
wget -P bootable/recovery/gui/theme/shrp_portrait_hdpi/ https://raw.githubusercontent.com/MASTERGUY/SHRP_modified_mblu2/master/bootable/recovery/gui/theme/shrp_portrait_hdpi/portrait.xml
. build/envsetup.sh
lunch omni_mblu2-eng
mka recoveryimage
