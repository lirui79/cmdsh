#!/bin/sh


xtor_memory_test -x 2 -o 0x5000000 -m read -f /home/fpga/dataOut/1cm/1cm_95_0_0_5_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x7000000 -m read -f /home/fpga/dataOut/1cm/1cm_95_0_1_7_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0xA000000 -m read -f /home/fpga/dataOut/1cm/1cm_95_0_2_A_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0xC000000 -m read -f /home/fpga/dataOut/1cm/1cm_95_0_3_C_5.bin -l 0x1000000

