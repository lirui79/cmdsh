#!/bin/sh


p=0
ver=91_1
caseid=A6

CMD_PARAM=(
"out_h265_0_0.h265 -o 0xFDF00000 -l 0x4C51 "
"out_h265_1_0.h265 -o 0xFDE00000 -l 0x45C7 "
"out_h264_0_1.h264 -o 0xFDD00000 -l 0x67F6 "
"out_h264_1_1.h264 -o 0xFDC00000 -l 0x60CC "
"out_h265_0_2.h265 -o 0xFDB00000 -l 0x303E "
"out_h265_1_2.h265 -o 0xFDA00000 -l 0x2A07 "
"out_h264_0_3.h264 -o 0xFD900000 -l 0x3882 "
"out_h264_1_3.h264 -o 0xFD800000 -l 0x2FEC "
"out_h265_0_4.h265 -o 0xFD700000 -l 0xBD8 "
"out_h265_1_4.h265 -o 0xFD600000 -l 0xB08 "
"out_h264_0_5.h264 -o 0xFD500000 -l 0x199F "
"out_h264_1_5.h264 -o 0xFD400000 -l 0x151F "
"out_h265_0_16.h265 -o 0xFD300000 -l 0xF8EC "
"out_h265_1_16.h265 -o 0xFD200000 -l 0x45E2 "
"out_h264_0_17.h264 -o 0xFD100000 -l 0x12B4D "
"out_h264_1_17.h264 -o 0xFD000000 -l 0x6158 "
"out_h265_0_18.h265 -o 0xFCF00000 -l 0x2FFE "
"out_h265_1_18.h265 -o 0xFCE00000 -l 0x47A7 "
"out_h264_0_19.h264 -o 0xFCD00000 -l 0x373E "
"out_h264_1_19.h264 -o 0xFCC00000 -l 0x62D3 "
"out_h265_0_20.h265 -o 0xFCB00000 -l 0xA47 "
"out_h265_1_20.h265 -o 0xFCA00000 -l 0x457F "
"out_h264_0_21.h264 -o 0xFC900000 -l 0x1411 "
"out_h264_1_21.h264 -o 0xFC800000 -l 0x6158 "
"out160_128_8yuv0_6.yuv -o 0xF9000000 -l 0x7F800 "
"out160_128_8yuv1_6.yuv -o 0xF8000000 -l 0x87000 "
"out352_288_8yuv0_8.yuv -o 0xF7000000 -l 0x277200 "
"out352_288_8yuv1_8.yuv -o 0xF6000000 -l 0x37B000 "
"out416_240_8yuv0_10.yuv -o 0xF5000000 -l 0x36D800 "
"out416_240_8yuv1_10.yuv -o 0xF4000000 -l 0x36D800 "
"out160_120_8yuv0_11.yuv -o 0xF3000000 -l 0x7E900 "
"out160_120_8yuv1_11.yuv -o 0xF2000000 -l 0x7E900 "
"out352_288_8yuv0_13.yuv -o 0xF1000000 -l 0x2C1600 "
"out352_288_8yuv1_13.yuv -o 0xF0000000 -l 0x2C1600 "
"out416_240_8yuv0_15.yuv -o 0xEF000000 -l 0x2DB400 "
"out416_240_8yuv1_15.yuv -o 0xEE000000 -l 0x2DB400 "
"out160_128_8yuv0_22.yuv -o 0xED000000 -l 0x87000 "
"out160_128_8yuv1_22.yuv -o 0xEC000000 -l 0x87000 "
"out192_160_8yuv0_24.yuv -o 0xEB000000 -l 0x10E000 "
"out352_288_8yuv1_24.yuv -o 0xEA000000 -l 0x37B000 "
"out224_128_8yuv0_26.yuv -o 0xE9000000 -l 0xFC000 "
"out416_240_8yuv1_26.yuv -o 0xE8000000 -l 0x36D800 "
"out160_120_8yuv0_27.yuv -o 0xE7000000 -l 0x7E900 "
"out160_120_8yuv1_27.yuv -o 0xE6000000 -l 0x7E900 "
"out192_160_8yuv0_29.yuv -o 0xE5000000 -l 0xD5C00 "
"out352_288_8yuv1_29.yuv -o 0xE4000000 -l 0x2C1600 "
"out224_128_8yuv0_31.yuv -o 0xE3000000 -l 0xD2000 "
"out416_240_8yuv1_31.yuv -o 0xE2000000 -l 0x2DB400 "
"out352_288_10yuv0_7.yuv -o 0xE0000000 -l 0x4EE400 "
"out352_288_10yuv1_7.yuv -o 0xDE000000 -l 0x6F6000 "
"out416_240_10yuv0_9.yuv -o 0xDC000000 -l 0x6DB000 "
"out416_240_10yuv1_9.yuv -o 0xDA000000 -l 0x6DB000 "
"out352_288_10yuv0_12.yuv -o 0xD8000000 -l 0x582C00 "
"out352_288_10yuv1_12.yuv -o 0xD6000000 -l 0x582C00 "
"out416_240_10yuv0_14.yuv -o 0xD4000000 -l 0x5B6800 "
"out416_240_10yuv1_14.yuv -o 0xD2000000 -l 0x5B6800 "
"out192_160_10yuv0_23.yuv -o 0xD0000000 -l 0x21C000 "
"out352_288_10yuv1_23.yuv -o 0xCE000000 -l 0x6F6000 "
"out224_128_10yuv0_25.yuv -o 0xCC000000 -l 0x1F8000 "
"out416_240_10yuv1_25.yuv -o 0xCA000000 -l 0x6DB000 "
"out192_160_10yuv0_28.yuv -o 0xC8000000 -l 0x1AB800 "
"out352_288_10yuv1_28.yuv -o 0xC6000000 -l 0x582C00 "
"out224_128_10yuv0_30.yuv -o 0xC4000000 -l 0x1A4000 "
"out416_240_10yuv1_30.yuv -o 0xC2000000 -l 0x5B6800 "
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
