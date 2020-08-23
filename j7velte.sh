#!/bin/bash
git clone https://github.com/marchetto94/android_device_skyhawk -b j7velte device/samsung/j7velte
git clone https://gitlab.com/Universal7870/common/android_kernel_samsung_exynos7870.git -b skyhawk kernel/samsung/exynos7870
. build/envsetup.sh
lunch omni_j7velte-eng
mka recoveryimage
