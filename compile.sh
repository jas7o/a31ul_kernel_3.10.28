#!/bin/bash

clear

export ARCH=arm
export SUBARCH=arm

ccache -M 10G
export USE_CCACHE=1
export CCACHE_DIR=/home/jas7o/.ccache

export TOP=/home/jas7o/android
export PATH=$TOP/toolschain/arm-cortex_a8-linux-gnueabi-linaro_4.8.3-2013.12/bin/:$PATH

export CROSS_COMPILE=arm-cortex_a8-linux-gnueabi-

#make a31ul-jas7o_defconfig
make .config
make menuconfig
