#!/bin/bash
git clone https://github.com/bluedogerino/shrp_j5y17lte device/samsung/j5y17lte
. build/envsetup.sh
lunch omni_j5y17lte-eng
mka recoveryimage
