#!/bin/sh



dec2hex(){
   printf "%X" $1
}

index=0
ver=7
INUM=6
for ((i=0; i < INUM; ++i))
do
n=$(( 0x6 * i + 0xB ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/2c32/2c32_0_"$index"_"$n"_"$ver".bin -l 0x1000000


n=$(( 0x6 * i + 0xB + 0x3))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/2c32/2c32_1_"$index"_"$n"_"$ver".bin -l 0x1000000

index=$(( index + 1 ))
done


INUM=10
for ((i=0; i < INUM; ++i))
do
n=$(( 0x6 * i + 0x2E ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/2c32/2c32_0_"$index"_"$n"_"$ver".bin -l 0x1000000


n=$(( 0x6 * i + 0x2E + 0x3))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/2c32/2c32_1_"$index"_"$n"_"$ver".bin -l 0x1000000

index=$(( index + 1 ))
done


INUM=6
for ((i=0; i < INUM; ++i))
do
n=$(( 0x6 * i + 0x6B ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/2c32/2c32_0_"$index"_"$n"_"$ver".bin -l 0x1000000


n=$(( 0x6 * i + 0x6B + 0x3))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/2c32/2c32_1_"$index"_"$n"_"$ver".bin -l 0x1000000

index=$(( index + 1 ))
done


INUM=10
for ((i=0; i < INUM; ++i))
do
n=$(( 0x6 * i + 0x8E ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/2c32/2c32_0_"$index"_"$n"_"$ver".bin -l 0x1000000


n=$(( 0x6 * i + 0x8E + 0x3))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/2c32/2c32_1_"$index"_"$n"_"$ver".bin -l 0x1000000

index=$(( index + 1 ))
done
