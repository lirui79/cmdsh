#!/bin/sh


p=0
ver=2_13
caseid=97

CMD_PARAM=(
"out_yuv_1_25.yuv -o 0xF0000000 -l 0x1C2000 "
"out_yuv_1_20.yuv -o 0xF0200000 -l 0x1A5E00 "
"out_yuv_1_9.yuv -o 0xF0400000 -l 0x1C2000 "
"out_yuv_1_4.yuv -o 0xF0600000 -l 0x1A5E00 "
"out_yuv_1_19.yuv -o 0xF0800000 -l 0x1BD800 "
"out_yuv_1_18.yuv -o 0xF0A00000 -l 0x1BD800 "
"out_yuv_1_3.yuv -o 0xF0C00000 -l 0x1BD800 "
"out_yuv_1_2.yuv -o 0xF0E00000 -l 0x1BD800 "
"bitstream_1_31.h265 -o 0xF1000000 -l 0x43C0D "
"bitstream_1_30.h264 -o 0xF1200000 -l 0x46E4D "
"bitstream_1_29.h265 -o 0xF1400000 -l 0x225B4 "
"bitstream_1_28.h264 -o 0xF1600000 -l 0x28AA8 "
"bitstream_1_27.h265 -o 0xF1800000 -l 0xF30D "
"bitstream_1_26.h264 -o 0xF1A00000 -l 0xF0F9 "
"out_yuv_1_17.yuv -o 0xF1C00000 -l 0x1B6C00 "
"out_yuv_1_16.yuv -o 0xF1E00000 -l 0x1B6C00 "
"bitstream_1_15.h265 -o 0xF2000000 -l 0x43C0D "
"bitstream_1_14.h264 -o 0xF2200000 -l 0x46E4D "
"bitstream_1_13.h265 -o 0xF2400000 -l 0x225B4 "
"bitstream_1_12.h264 -o 0xF2600000 -l 0x28AA8 "
"bitstream_1_11.h265 -o 0xF2800000 -l 0xF30D "
"bitstream_1_10.h264 -o 0xF2A00000 -l 0xF0F9 "
"out_yuv_1_1.yuv -o 0xF2C00000 -l 0x1B6C00 "
"out_yuv_1_0.yuv -o 0xF2E00000 -l 0x1B6C00 "
"out_yuv_1_24.yuv -o 0xF3000000 -l 0x1BD800 "
"out_yuv_1_23.yuv -o 0xF3200000 -l 0x1BD800 "
"out_yuv_1_22.yuv -o 0xF3400000 -l 0x1B6C00 "
"out_yuv_1_21.yuv -o 0xF3600000 -l 0x1B6C00 "
"out_yuv_1_8.yuv -o 0xF3800000 -l 0x1BD800 "
"out_yuv_1_7.yuv -o 0xF3A00000 -l 0x1BD800 "
"out_yuv_1_6.yuv -o 0xF3C00000 -l 0x1B6C00 "
"out_yuv_1_5.yuv -o 0xF3E00000 -l 0x1B6C00 "
		)

dec2hex(){
   printf "%X" $1
}

CMD_PATH=(
                  "sdk72_case/1cm"
                  )

#INUM=${#CMD_PARAM[*]}
INUM=${#CMD_PARAM[@]}
echo $INUM

for ((i=0; i < INUM; ++i))
do

echo $i${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
xtor_memory_test -x 2 -m read -f /home/fpga/dataOut/${CMD_PATH[p]}/$caseid/res_"$ver"_"$caseid"_${CMD_PARAM[i]}
done
