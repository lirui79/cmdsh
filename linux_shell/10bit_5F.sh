#!/bin/sh


p=0
ver=2_11
caseid=5f

CMD_PARAM=(
"out_yuv_0_30.yuv -o 0xF0000000 -l 0x1BD800 "
"out_yuv_1_30.yuv -o 0xF0200000 -l 0x1BD800 "
"out_yuv_0_28.yuv -o 0xF0400000 -l 0x1B6C00 "
"out_yuv_1_28.yuv -o 0xF0600000 -l 0x1B6C00 "
"out_yuv_0_31.yuv -o 0xF0800000 -l 0x1B6C00 "
"out_yuv_0_29.yuv -o 0xF0A00000 -l 0x1BD800 "
"out_yuv_1_31.yuv -o 0xF0C00000 -l 0x1B6C00 "
"out_yuv_1_29.yuv -o 0xF0E00000 -l 0x1BD800 "
		)

dec2hex(){
   printf "%X" $1
}

CMD_PATH=(
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
