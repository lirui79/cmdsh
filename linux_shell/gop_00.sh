#!/bin/sh


p=0
ver=91_1
caseid=00

CMD_PARAM=(
"out_h264_0_0.h264 -o 0xFDF00000 -l 0x6ED5 "
"out_h264_1_0.h264 -o 0xFDE00000 -l 0x6ED5 "
"out_h265_0_1.h265 -o 0xFDD00000 -l 0x55F3 "
"out_h265_1_1.h265 -o 0xFDC00000 -l 0x55F3 "
"out_h264_0_2.h264 -o 0xFDB00000 -l 0x12B4D "
"out_h264_1_2.h264 -o 0xFDA00000 -l 0x12B4D "
"out_h265_0_3.h265 -o 0xFD900000 -l 0xF8EC "
"out_h265_1_3.h265 -o 0xFD800000 -l 0xF8EC "
"out_h264_0_4.h264 -o 0xFD700000 -l 0x60CC "
"out_h264_1_4.h264 -o 0xFD600000 -l 0x60CC "
"out_h265_0_5.h265 -o 0xFD500000 -l 0x45C7 "
"out_h265_1_5.h265 -o 0xFD400000 -l 0x45C7 "
"out_h264_0_6.h264 -o 0xFD300000 -l 0x67F6 "
"out_h264_1_6.h264 -o 0xFD200000 -l 0x67F6 "
"out_h265_0_7.h265 -o 0xFD100000 -l 0x4C51 "
"out_h265_1_7.h265 -o 0xFD000000 -l 0x4C51 "
		)

dec2hex(){
   printf "%X" $1
}

CMD_PATH=(
                  "new_rtl/gop"
                  "sdk72_new/framemode"
                  "sdk72_case/framemode"
                  )

INUM=${#CMD_PARAM[@]}
echo $INUM

for ((i=0; i < INUM; ++i))
do

echo $i${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
xtor_memory_test -x 2 -m read -f /home/fpga/dataOut/${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
done
