#!/bin/sh


p=0
ver=2_13
caseid=7e

CMD_PARAM=(
"bitstream_0_31.h264 -o 0xF0000000 -l 0x4273F "
"bitstream_0_30.h265 -o 0xF0200000 -l 0x45062 "
"bitstream_1_31.h264 -o 0xF0400000 -l 0x4F062 "
"bitstream_1_30.h265 -o 0xF0600000 -l 0x45B1A "
		)

dec2hex(){
   printf "%X" $1
}

CMD_PATH=(
                  "sdk72_case/mirotate"
                  "sdk72_case/yuv422"
                  "sdk72_case/downscaler"
                  )

#INUM=${#CMD_PARAM[*]}
INUM=${#CMD_PARAM[@]}
echo $INUM

for ((i=0; i < INUM; ++i))
do

echo $i${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
xtor_memory_test -x 2 -m read -f /home/fpga/dataOut/${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
done
