#!/bin/bash
git clone https://github.com/pietrolotto/android_device_skyhawk.git -b j7y17lte device/samsung/j7y17lte
git clone https://gitlab.com/Universal7870/common/android_kernel_samsung_exynos7870.git -b skyhawk kernel/samsung/exynos7870
. build/envsetup.sh
lunch omni_j7y17lte-eng
mka recoveryimage
