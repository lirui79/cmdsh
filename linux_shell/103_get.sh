#!/bin/sh



dec2hex(){
   printf "%X" $1
}

DIR=103_3

index=0

INUM=4
for ((i=0; i < INUM; ++i))
do
n=$(( 0x3 * i + 0x11 ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/"$DIR"/"$DIR"_0_"$index"_"$n"_6.bin -l 0x1000000


n=$(( 0x3 * i + 0x31 ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/"$DIR"/"$DIR"_1_"$index"_"$n"_6.bin -l 0x1000000

index=$(( index + 1 ))

done
