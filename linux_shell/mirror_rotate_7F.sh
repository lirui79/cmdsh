#!/bin/sh


p=0
ver=2_16
caseid=7f

CMD_PARAM=(
"bitstream_0_31.h264 -o 0xF0000000 -l 0x1B401 "
"bitstream_0_30.h265 -o 0xF0200000 -l 0x83D83 "
"bitstream_1_31.h264 -o 0xF0400000 -l 0x5AFDA "
"bitstream_1_30.h265 -o 0xF0600000 -l 0x4C3CA "
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
