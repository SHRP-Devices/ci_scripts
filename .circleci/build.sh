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
  ZIP=$(ls out/target/product/$1/SHRP*.zip)
  tgsay -f "$ZIP" "$dev build finished!"
}

# Run it by default
tginit
