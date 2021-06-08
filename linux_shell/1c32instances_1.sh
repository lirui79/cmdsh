#!/bin/sh



dec2hex(){
   printf "%X" $1
}

index=0
ver=7
INUM=6
for ((i=0; i < INUM; ++i))
do
n=$(( 0x3 * i + 0xB ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/1c32_1/1c32_1_"$index"_"$n"_"$ver".bin -l 0x1000000
index=$(( index + 1 ))
done


INUM=10
for ((i=0; i < INUM; ++i))
do
n=$(( 0x3 * i + 0x1C ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/1c32_1/1c32_1_"$index"_"$n"_"$ver".bin -l 0x1000000

index=$(( index + 1 ))
done


INUM=6
for ((i=0; i < INUM; ++i))
do
n=$(( 0x3 * i + 0x3B ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/1c32_1/1c32_1_"$index"_"$n"_"$ver".bin -l 0x1000000

index=$(( index + 1 ))
done


INUM=10
for ((i=0; i < INUM; ++i))
do
n=$(( 0x3 * i + 0x4C ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/1c32_1/1c32_1_"$index"_"$n"_"$ver".bin -l 0x1000000

index=$(( index + 1 ))
done
