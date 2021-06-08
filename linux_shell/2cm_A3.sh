#!/bin/sh


p=0
ver=88_1
caseid=A3

CMD_PARAM=(
"out416_240_8yuv0_0.yuv -o 0xF9000000 -l 0x36D800 "
"out352_288_8yuv1_0.yuv -o 0xF8000000 -l 0x37B000 "
"out352_288_8yuv0_1.yuv -o 0xF7000000 -l 0x2C1600 "
"out416_240_8yuv1_1.yuv -o 0xF6000000 -l 0x2DB400 "
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
