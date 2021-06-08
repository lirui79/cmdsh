#!/bin/sh


dec2hex(){
   printf "%X" $1
}

INUM=1
i=0
#for ((i=0; i < INUM; ++i))
#do
n=$(( 0x3 * i + 0xb ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/haps3/200/enc50_0_0_"$n"_6.bin -l 0x1000000

$done

 xtor_memory_test -x 2 -o 0xD000000 -m read -f /home/fpga/dataOut/haps3/200/enc50_0_0_d_8.h265 -l 0x3b54a

#   xtor_memory_test -x 2 -m read -f /home/fpga/dataOut/haps3/200/

