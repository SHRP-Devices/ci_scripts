#!/bin/bash
# Functions
function tgsay() {
    curl -s -X POST "https://api.telegram.org/bot$token/sendMessage" \
        -d chat_id="$mchat_id" \
        -d "disable_web_page_preview=true" \
        -d "parse_mode=html" \
        -d text="$1"
}

function abort() {
  curl -s -X POST "https://api.telegram.org/bot$token/sendMessage" \
        -d chat_id="$mchat_id" \
        -d "disable_web_page_preview=true" \
        -d "parse_mode=markdown" \
        -d text="$1"
    exit 1
}

function tgsendzip() {
  ZIP=$(ls out/target/product/$1/SHRP*.zip)
  HASH_MD5=$(md5sum $ZIP | awk '{ print $1 }')
  curl -F document=@$ZIP "https://api.telegram.org/bot$token/sendDocument" \
      -F chat_id="$chat_id" \
      -F "disable_web_page_preview=true" \
      -F "parse_mode=html" \
      -F caption="<b>• Giovix92 CI - SHRP •</b>%0ABuild completed in $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds for <code>$1</code>!%0AHash: <code>$HASH_MD5</code>"
}

git clone https://github.com/SHRP-Devices/ci_scripts
mv ci_scripts/*.sh .
rm -rf ci_scripts/
if [ "$DEVICE" == "" ]; then
  for bdevice in $(ls *.sh)
  do
    START=$(date +"%s")
    pdevice=$(basename $bdevice .sh)
    rm -rf device/
    mkdir device/
    tgsay "<b>• Giovix92 CI - SHRP •</b>%0ABuild started on <code>Circle CI</code>, device <code>$pdevice</code>"
    bash $bdevice || abort "<b>• Giovix92 CI - SHRP •</b>%0ABuild throwing errors! Last device: <code>$pdevice</code>"
    END=$(date +"%s")
    DIFF=$(($END - $START))
    tgsendzip $pdevice
    make clean
  done
else
  tgsay "<b>• Giovix92 CI - SHRP •</b>%0ABuild started on <code>Circle CI</code>, device <code>$DEVICE</code>%0ANote: that's a single build mode."
  bash $DEVICE.sh || abort "<b>• Giovix92 CI - SHRP •</b>%0ABuild throwing errors! Last device: <code>$DEVICE</code>"
  tgsendzip $DEVICE
fi
