#!/bin/bash
# Functions
function tginit() {
  export telegramsh="telegram/telegram"
}

function tgsay() {
  $telegramsh -t $token -c $mchat_id -H \
      "$(
          for POST in "${@}"; do
              echo "${POST}"
          done
      )"
}

function abort() {
    tgsay "$1"
    exit 1
}

function tgsendzip() {
  ZIP=$(ls out/target/product/$1/SHRP*.zip)
  HASH_MD5=$(md5sum $ZIP | awk '{ print $1 }')
  tgsay -f "$ZIP" "$1 build finished! MD5: $HASH_MD5"
}

# Run it by default
tginit
