#!/bin/sh

CMD_PARAM=(
"_0_0_h265.h265 -o 0x0b400000 -l 0xf8ec"
"_1_0_h265.h265 -o 0x0e400000 -l 0xf8ec"
"_0_1_h264.h264 -o 0x11400000 -l 0x12adb"
"_1_1_h264.h264 -o 0x14400000 -l 0x12adb"
"_0_2_h265.h265 -o 0x17200000 -l 0x72c0"
"_1_2_h265.h265 -o 0x1a200000 -l 0x72c0"
"_0_3_h264.h264 -o 0x1d200000 -l 0x7638"
"_1_3_h264.h264 -o 0x20200000 -l 0x7638"
"_0_4_h265.h265 -o 0x23400000 -l 0x1156"
"_1_4_h265.h265 -o 0x26400000 -l 0x1156"
"_0_5_h264.h264 -o 0x29400000 -l 0x1d73"
"_1_5_h264.h264 -o 0x2c400000 -l 0x1d73"
"_0_6_yuv.yuv -o 0x2f500000 -l 0x5a000"
"_1_6_yuv.yuv -o 0x32500000 -l 0x5a000"
"_0_7_yuv.yuv -o 0x35e00000 -l 0x37b000"
"_1_7_yuv.yuv -o 0x38e00000 -l 0x37b000"
"_0_8_yuv.yuv -o 0x3b800000 -l 0x1bd800"
"_1_8_yuv.yuv -o 0x3e800000 -l 0x1bd800"
"_0_9_yuv.yuv -o 0x41e00000 -l 0x3a8000"
"_1_9_yuv.yuv -o 0x44e00000 -l 0x3a8000"
"_0_10_yuv.yuv -o 0x47800000 -l 0x1d4000"
"_1_10_yuv.yuv -o 0x4a800000 -l 0x1d4000"
"_0_11_yuv.yuv -o 0x4c900000 -l 0x5a000"
"_1_11_yuv.yuv -o 0x4f900000 -l 0x5a000"
"_0_12_yuv.yuv -o 0x53b00000 -l 0x37b000"
"_1_12_yuv.yuv -o 0x56b00000 -l 0x37b000"
"_0_13_yuv.yuv -o 0x58b00000 -l 0x1bd800"
"_1_13_yuv.yuv -o 0x5bb00000 -l 0x1bd800"
"_0_14_yuv.yuv -o 0x5fb00000 -l 0x3a8000"
"_1_14_yuv.yuv -o 0x62b00000 -l 0x3a8000"
"_0_15_yuv.yuv -o 0x64b00000 -l 0x1d4000"
"_1_15_yuv.yuv -o 0x67b00000 -l 0x1d4000"
"_0_16_h265.h265 -o 0x6b400000 -l 0xf8ec"
"_1_16_h265.h265 -o 0x6e400000 -l 0xf8ec"
"_0_17_h264.h264 -o 0x71400000 -l 0x12adb"
"_1_17_h264.h264 -o 0x74400000 -l 0x12adb"
"_0_18_h265.h265 -o 0x77200000 -l 0x72c0"
"_1_18_h265.h265 -o 0x7a200000 -l 0x72c0"
"_0_19_h264.h264 -o 0x7d200000 -l 0x7638"
"_1_19_h264.h264 -o 0x80200000 -l 0x7638"
"_0_20_h265.h265 -o 0x83400000 -l 0x1156"
"_1_20_h265.h265 -o 0x86400000 -l 0x1156"
"_0_21_h264.h264 -o 0x89400000 -l 0x1d73"
"_1_21_h264.h264 -o 0x8c400000 -l 0x1d73"
"_0_22_yuv.yuv -o 0x8f500000 -l 0x5a000"
"_1_22_yuv.yuv -o 0x92500000 -l 0x5a000"
"_0_23_yuv.yuv -o 0x95e00000 -l 0x37b000"
"_1_23_yuv.yuv -o 0x98e00000 -l 0x37b000"
"_0_24_yuv.yuv -o 0x9b800000 -l 0x1bd800"
"_1_24_yuv.yuv -o 0x9e800000 -l 0x1bd800"
"_0_25_yuv.yuv -o 0xa1e00000 -l 0x3a8000"
"_1_25_yuv.yuv -o 0xa4e00000 -l 0x3a8000"
"_0_26_yuv.yuv -o 0xa7800000 -l 0x1d4000"
"_1_26_yuv.yuv -o 0xaa800000 -l 0x1d4000"
"_0_27_yuv.yuv -o 0xac900000 -l 0x5a000"
"_1_27_yuv.yuv -o 0xaf900000 -l 0x5a000"
"_0_28_yuv.yuv -o 0xb3b00000 -l 0x37b000"
"_1_28_yuv.yuv -o 0xb6b00000 -l 0x37b000"
"_0_29_yuv.yuv -o 0xb8b00000 -l 0x1bd800"
"_1_29_yuv.yuv -o 0xbbb00000 -l 0x1bd800"
"_0_30_yuv.yuv -o 0xbfb00000 -l 0x3a8000"
"_1_30_yuv.yuv -o 0xc2b00000 -l 0x3a8000"
"_0_31_yuv.yuv -o 0xc4b00000 -l 0x1d4000"
"_1_31_yuv.yuv -o 0xc7b00000 -l 0x1d4000"
		)


CMD_PATH=(
                  "haps3/200/200"
                  "haps3/1c32_0/1c32_0"
                  "haps3/1c32_1/1c32_1"
                  "haps3/2c32/2c32"
                  )

dec2hex(){
   printf "%X" $1
}


ver=23
INUM=64
p=3

for ((i=0; i < INUM; ++i))
do
#echo 
echo $i${CMD_PATH[p]}_$ver${CMD_PARAM[i]}
xtor_memory_test -f /home/fpga/dataOut/${CMD_PATH[p]}_$ver${CMD_PARAM[i]} -x 2 -m read

done

