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
  if [ "$dev" == "beyond2lte" ] || [ "$dev" == "beyondx"] || [ "$dev" == "beyond1lte" ] || [ "$dev" == "beyond0lte"]; then
    mv out/target/product/*/recovery.img telegram/
  else
    mv out/target/product/*/SHRP*.zip telegram/
  fi
  cd telegram/
  if [ "$dev" == "beyond2lte" ] || [ "$dev" == "beyondx"] || [ "$dev" == "beyond1lte" ] || [ "$dev" == "beyond0lte"]; then
    file=$(ls rec*.img)
  else
    file=$(ls SHRP*.zip)
  fi
  ./telegram -t $token -c $mchat_id -f "$file" "$dev build finished!"
  rm -rf "$file"
  cd ..
}

# Run it by default
tginit
