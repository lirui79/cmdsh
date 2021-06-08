#!/bin/sh

xtor_memory_test -x 2 -o 0x5000000 -m read -f /home/fpga/dataOut/1cm/1cm_93_0_0_5_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x7000000 -m read -f /home/fpga/dataOut/1cm/1cm_93_0_1_7_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x9000000 -m read -f /home/fpga/dataOut/1cm/1cm_93_0_2_9_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0xB000000 -m read -f /home/fpga/dataOut/1cm/1cm_93_0_3_B_5.bin -l 0x1000000

