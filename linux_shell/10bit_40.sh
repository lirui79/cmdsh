#!/bin/sh


p=0
ver=82_1
caseid=40

CMD_PARAM=(
"out_h265_0_0.h265 -o 0xFDF00000 -l 0x2A17 "
"out_h265_1_0.h265 -o 0xFDE00000 -l 0x2A17 "
"out_h264_0_1.h264 -o 0xFDD00000 -l 0x3B42 "
"out_h264_1_1.h264 -o 0xFDC00000 -l 0x3B42 "
"out_h265_0_2.h265 -o 0xFDB00000 -l 0x797 "
"out_h265_1_2.h265 -o 0xFDA00000 -l 0x797 "
"out_h264_0_3.h264 -o 0xFD900000 -l 0xC29 "
"out_h264_1_3.h264 -o 0xFD800000 -l 0xC29 "
		)

dec2hex(){
   printf "%X" $1
}

CMD_PATH=(
                  "sdk72_new/10bit"
                  "sdk72_case/10bit"
                  )

#INUM=${#CMD_PARAM[*]}
INUM=${#CMD_PARAM[@]}
echo $INUM

for ((i=0; i < INUM; ++i))
do

echo $i${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
xtor_memory_test -x 2 -m read -f /home/fpga/dataOut/${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
done
