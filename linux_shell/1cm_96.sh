#!/bin/sh



dec2hex(){
   printf "%X" $1
}

caseID=96

INUM=4
for ((i=0; i < INUM; ++i))
do
n=$(( 0x48 + i ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o $a -m read -f /home/fpga/dataOut/1cm/1cm_"$caseID"_1_0_"$n"_7.bin -l 0x1000000
done



#xtor_memory_test -x 2 -o 0x28000000 -m read -f /home/fpga/dataOut/1cm/1cm_96_1_0_28_7.bin -l 0x1000000

#xtor_memory_test -x 2 -o 0x29000000 -m read -f /home/fpga/dataOut/1cm/1cm_96_1_0_29_7.bin -l 0x1000000

#xtor_memory_test -x 2 -o 0x2A000000 -m read -f /home/fpga/dataOut/1cm/1cm_96_1_0_2A_7.bin -l 0x1000000

#xtor_memory_test -x 2 -o 0x2B000000 -m read -f /home/fpga/dataOut/1cm/1cm_96_1_0_2B_7.bin -l 0x1000000

