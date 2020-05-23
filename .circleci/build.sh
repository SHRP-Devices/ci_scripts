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
  dev=$(cat lastdevice)
  mv out/target/product/$dev/SHRP*.zip telegram/
  cd telegram/
  ZIP=$(ls SHRP*.zip)
  ./telegram -t $token -c $mchat_id -f "$ZIP" "$dev build finished!"
  cd ..
}

# Run it by default
tginit
