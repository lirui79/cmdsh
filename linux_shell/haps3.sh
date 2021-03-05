#!/bin/sh



./haps2.sh

CMD=1

if [[ $CMD == 0 ]] ; then
echo "16 source data"
xtor_memory_test -x 2 -o 0x8000000 -m write_from_file -f /home/fpga/data/src_all_2M.bin  -l 0x2000000
elif [[ $CMD == 1 ]] ; then
echo "YUV_352x288_B8_F50.yuv"
xtor_memory_test -x 2 -o 0x8000000 -m write_from_file -f /home/fpga/data/YUV_352x288_B8_F50.yuv  -l 7603200
elif [[ $CMD == 2 ]] ; then
echo "highway_cif_352_288_2000.yuv"
xtor_memory_test -x 2 -o 0x8000000 -m write_from_file -f /home/fpga/data/highway_cif_352_288_2000.yuv  -l 304128000
elif [[ $CMD == 3 ]] ; then
echo "we_8k_10bit_50frames.yuv"
xtor_memory_test -x 2 -o 0x8000000 -m write_from_file -f /home/fpga/data/we_8k_10bit_50frames.yuv -l 0x40000000
elif [[ $CMD == 4 ]] ; then
echo "we_8192x8192.yuv"
xtor_memory_test -x 2 -o 0x8000000 -m write_from_file -f /home/fpga/data/we_8192x8192.yuv -l 0x40000000
fi


