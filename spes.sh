git clone https://github.com/shashankx86/android_device_xiaomi_spes-TWRP.git -b twrp-11 device/xiaomi/spes
. build/envsetup.sh
lunch twrp_spes-eng
mka bootimage
