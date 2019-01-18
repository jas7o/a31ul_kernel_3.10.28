#!/bin/bash

rm dt.img

cp ./arch/arm/boot/zImage ./boot_out
./mkbootimg_tools/dtbTool -p ./scripts/dtc/ -o ./boot_out/dt.img ./arch/arm/boot/dts/
