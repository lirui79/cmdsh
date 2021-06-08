#!/bin/sh

xtor_memory_test -x 2 -o 0x6000000 -m read -f /home/fpga/dataOut/1cm/1cm_94_0_0_6_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x8000000 -m read -f /home/fpga/dataOut/1cm/1cm_94_0_1_8_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0xA000000 -m read -f /home/fpga/dataOut/1cm/1cm_94_0_2_A_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0xC000000 -m read -f /home/fpga/dataOut/1cm/1cm_94_0_3_C_5.bin -l 0x1000000

