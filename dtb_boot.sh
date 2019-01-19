#!/bin/bash

rm ./boot_out/dt.img
rm ./boot_out/zImage

cp ./arch/arm/boot/zImage ./boot_out

find ./ -name "*.ko" -exec cp {} ./boot_out/modules/ \;

arm-cortex_a8-linux-gnueabi-strip -g ./boot_out/modules/wlan.ko

./mkbootimg_tools/dtbToolCM -s 2048 -d "htc,project-id = <" -o ./boot_out/dt.img -p ./scripts/dtc/ ./arch/arm/boot/



