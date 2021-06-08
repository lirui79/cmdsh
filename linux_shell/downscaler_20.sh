#!/bin/sh


p=0
ver=91_1
caseid=20

CMD_PARAM=(
"out192_160_8yuv0_0.yuv -o 0xF9000000 -l 0xD5C00 "
"out192_160_8yuv1_0.yuv -o 0xF8000000 -l 0xD5C00 "
"out192_160_8yuv0_1.yuv -o 0xF7000000 -l 0x10E000 "
"out192_160_8yuv1_1.yuv -o 0xF6000000 -l 0x10E000 "
		)

dec2hex(){
   printf "%X" $1
}

CMD_PATH=(
                  "new_rtl/downscaler"
                  )

INUM=${#CMD_PARAM[@]}
echo $INUM

for ((i=0; i < INUM; ++i))
do

echo $i${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
xtor_memory_test -x 2 -m read -f /home/fpga/dataOut/${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
done
