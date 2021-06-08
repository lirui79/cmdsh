#!/bin/sh

p=0
ver=2_10
INUM=6
caseid=03

CMD_PARAM=(
"bitstream_0_31.h264 -o 0xF0000000 -l 0x58DA8 "
"bitstream_0_30.h264 -o 0xF0200000 -l 0x8C6BF "
"bitstream_0_29.h264 -o 0xF0400000 -l 0x4273F "
"bitstream_0_28.h265 -o 0xF0600000 -l 0x4CB0E "
"bitstream_0_27.h265 -o 0xF0800000 -l 0x83BC0 "
"bitstream_0_26.h265 -o 0xF0A00000 -l 0x444BB "
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
