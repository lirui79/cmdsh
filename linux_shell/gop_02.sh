#!/bin/sh

p=0
ver=2_10
INUM=2
caseid=02

CMD_PARAM=(
"bitstream_0_31.h264 -o 0xF0000000 -l 0x46E4D "
"bitstream_0_30.h265 -o 0xF0200000 -l 0x43C0D "
		)

dec2hex(){
   printf "%X" $1
}

CMD_PATH=(
                  "sdk72_case/framemode"
                  )


for ((i=0; i < INUM; ++i))
do

echo $i${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
xtor_memory_test -x 2 -m read -f /home/fpga/dataOut/${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
done
