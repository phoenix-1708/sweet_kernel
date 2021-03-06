#!/bin/bash

git clone https://github.com/fabianonline/telegram.sh.git  -b master

# Zipping
KERNEL_DIR=$(pwd)
IMAGE="/home/runner/work/sweet_kernel/sweet_kernel/phoenix/android_kernel_xiaomi_sweet/out/arch/arm64/boot/Image.gz"
SEND_DIR="/home/runner/work/sweet_kernel/sweet_kernel/phoenix/android_kernel_xiaomi_sweet/telegram.sh"
BRANCH="$(git rev-parse --abbrev-ref HEAD)"

cd $SEND_DIR
./telegram -t 1858827137:AAFZVaKOjAhjVyCXfiGgL-SK6dp7_lILZIE -c -509071822 -f $IMAGE
echo "Zip Sent through GithubActions"
   #curl --upload-file ./PhoenixKernel_NonOC.zip https://transfer.sh/PhoenixKernel_NonOC.zip
echo -e "$cyan**************************************************"
echo  "                 Build Completed                    "
echo -e "***********************************************$default"
