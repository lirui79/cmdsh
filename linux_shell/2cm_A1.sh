#!/bin/sh


p=0
ver=86_1
caseid=A1

CMD_PARAM=(
"out_h265_0_1.h265 -o 0xFDF00000 -l 0x45C7 "
"out_h264_1_0.h264 -o 0xFDE00000 -l 0x60CC "
"out416_240_8yuv0_0.yuv -o 0xF9000000 -l 0x36D800 "
"out416_240_8yuv1_1.yuv -o 0xF8000000 -l 0x2DB400 "
		)

dec2hex(){
   printf "%X" $1
}

CMD_PATH=(
                  "sdk72_new/2cm"
                  "sdk72_case/2cm"
                  )

#INUM=${#CMD_PARAM[*]}
INUM=${#CMD_PARAM[@]}
echo $INUM

for ((i=0; i < INUM; ++i))
do

echo $i${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
xtor_memory_test -x 2 -m read -f /home/fpga/dataOut/${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
done
