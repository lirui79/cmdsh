#!/bin/sh


p=0
ver=2_16
caseid=83

CMD_PARAM=(
"out_yuv_1_30.yuv -o 0xF0000000 -l 0x1BD800 "
"out_yuv_1_28.yuv -o 0xF0200000 -l 0x1B6C00 "
"out_yuv_1_31.yuv -o 0xF0400000 -l 0x1B6C00 "
"out_yuv_1_29.yuv -o 0xF0600000 -l 0x1BD800 "
		)

dec2hex(){
   printf "%X" $1
}

CMD_PATH=(
                  "sdk72_case/1cm"
                  "sdk72_case/10bit"
                  "sdk72_case/yuv422"
                  "sdk72_case/downscaler"
                  "sdk72_case/mirotate"
                  )

#INUM=${#CMD_PARAM[*]}
INUM=${#CMD_PARAM[@]}
echo $INUM

for ((i=0; i < INUM; ++i))
do

echo $i${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
xtor_memory_test -x 2 -m read -f /home/fpga/dataOut/${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
done
