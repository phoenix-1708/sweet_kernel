#!/bin/bash

git clone https://github.com/phoenix-1708/Anykernel.git -b master

KERNEL_DIR=$(pwd)
IMAGE="/home/runner/work/sweet_kernel/sweet_kernel/phoenix/android_kernel_xiaomi_sweet/out/arch/arm64/boot/Image.gz"
ZIP="/home/runner/work/sweet_kernel/sweet_kernel/phoenix/android_kernel_xiaomi_sweet/Anykernel"
SEND_DIR="/home/runner/work/sweet_kernel/sweet_kernel/phoenix/android_kernel_xiaomi_sweet/telegram.sh"
BRANCH="$(git rev-parse --abbrev-ref HEAD)"

cp $IMAGE $ZIP

cd Anykernel

zip -r9 PhoenixKernel.zip *

git clone https://github.com/fabianonline/telegram.sh.git -b master telegram.sh

cd telegram.sh

./telegram -t 1858827137:AAFZVaKOjAhjVyCXfiGgL-SK6dp7_lILZIE -c -509071822 -f $ZIP/PhoenixKernel.zip "Zip sent through GithubActions"
echo "Zip Sent through GithubActions"
   #curl --upload-file ./PhoenixKernel_NonOC.zip https://transfer.sh/PhoenixKernel_NonOC.zip
echo -e "$cyan**************************************************"
echo  "                 Build Completed                    "
echo -e "***********************************************$default"
