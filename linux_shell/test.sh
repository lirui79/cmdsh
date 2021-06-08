#!/bin/sh


p=0
ver=2_11
INUM=1
caseid=1080p

CMD_PARAM=(
"out_yuv_1_31.yuv -o 0xF6000000 -l 0xEF1000 "
		)

dec2hex(){
   printf "%X" $1
}


CMD_PATH=(
                  "sdk72_case/mframes"
                  )


for ((i=0; i < INUM; ++i))
do

echo $i${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
xtor_memory_test -x 2 -m read -f /home/fpga/dataOut/${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
done
