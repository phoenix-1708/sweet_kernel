#!/bin/bash

git clone https://github.com/phoenix-1708/Anykernel.git -b master
git clone https://github.com/fabianonline/telegram.sh.git -b master telegram

KERNEL_DIR=$(pwd)
IMAGE="/home/runner/work/sweet_kernel/sweet_kernel/phoenix/android_kernel_xiaomi_sweet/out/arch/arm64/boot/Image.gz"
ZIP="/home/runner/work/sweet_kernel/sweet_kernel/phoenix/android_kernel_xiaomi_sweet/Anykernel"
SEND_DIR="/home/runner/work/sweet_kernel/sweet_kernel/phoenix/android_kernel_xiaomi_sweet/telegram"
ZIP_FINAL="/home/runner/work/sweet_kernel/sweet_kernel/phoenix/android_kernel_xiaomi_sweet/Anykernel/PhoenixKernel.zip"
BRANCH="$(git rev-parse --abbrev-ref HEAD)"

cp $IMAGE $ZIP

cd Anykernel

echo "zipping Started"
zip -r9 PhoenixKernel.zip *
echo "zipping Finished"
ls
echo "Copying to telegram folder"
$(pwd)
cp $HOME/runner/work/sweet_kernel/sweet_kernel/phoenix/android_kernel_xiaomi_sweet/Anykernel/PhoenixKernel.zip/PhoenixKernel.zip $HOME/runner/work/sweet_kernel/sweet_kernel/phoenix/android_kernel_xiaomi_sweet/telegram
echo "Copied to telegram folder"
echo "changing to telegram dir"
cd ..
cd telegram
echo "changed to telegram dir"
ls
./telegram -t 1858827137:AAFZVaKOjAhjVyCXfiGgL-SK6dp7_lILZIE -c -509071822 -f PhoenixKernel.zip "Zip sent through GithubActions"
echo "Zip Sent through GithubActions"
   #curl --upload-file ./PhoenixKernel_NonOC.zip https://transfer.sh/PhoenixKernel_NonOC.zip
echo -e "$cyan**************************************************"
echo  "                 Build Completed                    "
echo -e "***********************************************$default"
