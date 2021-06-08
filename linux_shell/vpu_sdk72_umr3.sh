#!/bin/sh

# ./sdk72_3.sh 1

CMD_PARAM=(
" -m write_from_file -f /home/fpga/data/YUV_352x288_B8_F50.yuv  -l 0x1BD800 "
" -m write_from_file -f /home/fpga/data/YUV_416x240_B10_F50.yuv  -l 0x1B6C00 "
" -m write_from_file -f /home/fpga/data/YUV_256x128_B8_F50.yuv  -l 0x1E0000 "
" -m write_from_file -f /home/fpga/data/YUV422_352x288_B8_F50.yuv  -l 0x1EF000 "
" -m write_from_file -f /home/fpga/data/YUV_352x288_B10_F50.yuv  -l 0x1BD800 "
" -m write_from_file -f /home/fpga/data/YUV_416x240_B8_F50.yuv  -l 0x1B6C00 "
" -m write_from_file -f /home/fpga/data/264_160x120_B8_IPPPP_F100.264  -l 306507 " 
" -m write_from_file -f /home/fpga/data/264_352x288_B10_IBPBP_F100.264 -l 378130 " 
" -m write_from_file -f /home/fpga/data/264_352x288_B8_IBPBP_F100.264 -l 424933 "
" -m write_from_file -f /home/fpga/data/264_416x240_B10_IBBBP_F100.264 -l 74358 "
" -m write_from_file -f /home/fpga/data/264_416x240_B8_IBBBP_F100.264 -l 84999 " 
" -m write_from_file -f /home/fpga/data/265_160x120_B8_IPPPP_F100.265 -l 223486 "  
" -m write_from_file -f /home/fpga/data/265_352x288_B10_IBPBP_F100.265 -l 311517 " 
" -m write_from_file -f /home/fpga/data/265_352x288_B8_IBPBP_F100.265 -l 343151 "
" -m write_from_file -f /home/fpga/data/265_416x240_B10_IBBBP_F100.265 -l 50407 "
" -m write_from_file -f /home/fpga/data/265_416x260_B8_IBBBP_F100.265 -l 56302 "
)

xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/zero_1G.bin  -l 0x1000000


#xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/firmware_37.bin  -l 998016
#xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952
xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/firmware_r231348.bin  -l 997952



CMD=$1

echo "$0 $1 $CMD"

#test case id
xtor_memory_test -x 2 -o 0xA00000 -m write_from_file -f /home/fpga/data/sdk_case.bin  -l 0x100000

#source file list
xtor_memory_test -x 2 -o 0xC00000 -m write_from_file -f /home/fpga/data/sdk_src.bin    -l 0x100000

#vpu dram address map
xtor_memory_test -x 2 -o 0xE00000 -m write_from_file -f /home/fpga/data/sdk_dram_map.bin    -l 0x100000

# CMD == 0
if [[ $CMD == 0 ]] ; then

#xtor_memory_test -x 2 -o 0x1000000 -m write_from_file -f /home/fpga/data/firmware_64.bin  -l 992832
xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952

echo "16 source data"

INUM=16
for ((i=0; i < INUM; ++i))
do
ADDR=$(( 0x3E00000 - i * 0x200000 ))
echo $ADDR ${CMD_PARAM[i]}
xtor_memory_test -x 2 -o $ADDR ${CMD_PARAM[i]}
done


# CMD == 1
elif [[ $CMD == 1 ]] ; then

#xtor_memory_test -x 2 -o 0x1000000 -m write_from_file -f /home/fpga/data/firmware_64.bin  -l 992832
xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952

echo "YUV_352x288_B8_F50.yuv"
xtor_memory_test -x 2 -o 0x2000000 -m write_from_file -f /home/fpga/data/YUV_352x288_B8_F50.yuv  -l 0x740400

# CMD == 2
elif [[ $CMD == 2 ]] ; then

#xtor_memory_test -x 2 -o 0x1000000 -m write_from_file -f /home/fpga/data/firmware_64.bin  -l 992832
xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952

echo "highway_cif_352_288_2000.yuv"
xtor_memory_test -x 2 -o 0x2000000 -m write_from_file -f /home/fpga/data/highway_cif_352_288_2000.yuv  -l 0x1220A000

# CMD == 3
elif [[ $CMD == 3 ]] ; then

#xtor_memory_test -x 2 -o 0x1000000 -m write_from_file -f /home/fpga/data/firmware_64.bin  -l 992832
xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952

echo "we_8k_10bit_50frames.yuv"
xtor_memory_test -x 2 -o 0x2000000 -m write_from_file -f /home/fpga/data/we_8k_10bit_50frames.yuv -l 0x1DA9C000

# CMD == 4
elif [[ $CMD == 4 ]] ; then


xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/firmware_64_r230470.bin  -l 997696

xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_64_r230470.bin  -l 997696

echo "we_8192x8192.yuv 4frames"
xtor_memory_test -x 2 -o 0x2000000 -m write_from_file -f /home/fpga/data/we_8192x8192.yuv -l 0x1E000000

# CMD == 5
elif [[ $CMD == 5 ]] ; then

#xtor_memory_test -x 2 -o 0x1000000 -m write_from_file -f /home/fpga/data/firmware_64.bin  -l 992832
xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952

echo "352x288_10bit_le.yuv"
xtor_memory_test -x 2 -o 0x2000000 -m write_from_file -f /home/fpga/data/352x288_10bit_le.yuv -l 0x63C6000

########################################################################################################
# CMD == 30
elif [[ $CMD == 30 ]] ; then

#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_64.bin  -l 992832
#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_37.bin  -l 998016
#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952
xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_r231348.bin  -l 997952

echo "all source data to last position"

INUM=16
for ((i=0; i < INUM; ++i))
do
ADDR=$(( 0xFFE00000 - i * 0x200000 ))
echo $ADDR ${CMD_PARAM[i]}
xtor_memory_test -x 2 -o $ADDR ${CMD_PARAM[i]}
done

##################################################################################################
# CMD == 31
elif [[ $CMD == 31 ]] ; then

#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_64.bin  -l 992832
#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952
xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_r231348.bin  -l 997952

echo "0xFE000000 YUV_352x288_B8_F50.yuv"
xtor_memory_test -x 2 -o 0xFFE00000 -m write_from_file -f /home/fpga/data/YUV_352x288_B8_F50.yuv  -l 0x740400


# CMD == 32
elif [[ $CMD == 32 ]] ; then

#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_64.bin  -l 992832
#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952
xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_r231348.bin  -l 997952

echo "0xC0000000 highway_cif_352_288_2000.yuv"
xtor_memory_test -x 2 -o 0xC0000000 -m write_from_file -f /home/fpga/data/highway_cif_352_288_2000.yuv  -l 0x1220A000


# CMD == 33
elif [[ $CMD == 33 ]] ; then

#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_64.bin  -l 992832
#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952
xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_r231348.bin  -l 997952

echo "0xC0000000 we_8k_10bit_50frames.yuv"
xtor_memory_test -x 2 -o 0xC0000000 -m write_from_file -f /home/fpga/data/we_8k_10bit_50frames.yuv -l 0x40000000


# CMD == 34
elif [[ $CMD == 34 ]] ; then


#xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/firmware_64_r230470.bin  -l 997696

#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_64_r230470.bin  -l 997696

xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/firmware_r231348.bin  -l 997952


xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_r231348.bin  -l 997952

echo "0xC0000000 we_8192x8192.yuv 4frames"
xtor_memory_test -x 2 -o 0xC0000000 -m write_from_file -f /home/fpga/data/we_8192x8192.yuv -l 0x30000000


# CMD == 35
elif [[ $CMD == 35 ]] ; then

#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_64.bin  -l 992832
#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952
xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_r231348.bin  -l 997952

echo "0xFE000000 352x288_10bit_le.yuv"
xtor_memory_test -x 2 -o 0xFE000000 -m write_from_file -f /home/fpga/data/352x288_10bit_le.yuv -l 0x2000000


# CMD == 36
elif [[ $CMD == 36 ]] ; then

#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_64.bin  -l 992832
#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952
xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_r231348.bin  -l 997952

echo "0xC0000000 Kimono1_1920x1080_24.yuv.h264"
xtor_memory_test -x 2 -o 0xC0000000 -m write_from_file -f /home/fpga/data/Kimono1_1920x1080_24.yuv.h264 -l 0x500000


# CMD == 37
elif [[ $CMD == 37 ]] ; then

#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_64.bin  -l 992832
#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_38.bin  -l 997952
xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_r231348.bin  -l 997952

echo "0xFE000000 856_480_8bit_5frames.yuv"
xtor_memory_test -x 2 -o 0xFFE00000 -m write_from_file -f /home/fpga/data/856_480_8bit_5frames.yuv -l 0x2F0580


# CMD == 38
elif [[ $CMD == 38 ]] ; then


#xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/firmware_64_r230470.bin  -l 997696

#xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_64_r230470.bin  -l 997696

xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/firmware_r231348.bin  -l 997952


xtor_memory_test -x 2 -o 0x400000 -m write_from_file -f /home/fpga/data/firmware_r231348.bin  -l 997952

echo "0xC0000000 we_10bit_8192x8192.yuv 4frames"
xtor_memory_test -x 2 -o 0xC0000000 -m write_from_file -f /home/fpga/data/we_10bit_8192x8192.yuv -l 0x40000000



fi




