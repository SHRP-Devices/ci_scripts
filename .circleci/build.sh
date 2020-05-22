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
    tgsay "$1"
    exit 1
}

function tgsendzip() {
  ZIP=$(ls out/target/product/$1/SHRP*.zip)
  HASH_MD5=$(md5sum $ZIP | awk '{ print $1 }')
  curl -F document=@$ZIP "https://api.telegram.org/bot$token/sendDocument" \
      -F chat_id="$chat_id" \
      -F "disable_web_page_preview=true" \
      -F "parse_mode=html" \
      -F caption="<b>• Giovix92 CI - SHRP •</b>%0A<code>$pdevice</code> build finished! MD5: <code>$HASH_MD5</code>"
}
