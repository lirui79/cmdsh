#!/bin/sh

xtor_memory_test -x 2 -o 0x4000000 -m read -f /home/fpga/dataOut/1cm/1cm_81_0_0_4_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x6000000 -m read -f /home/fpga/dataOut/1cm/1cm_81_0_0_6_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x8000000 -m read -f /home/fpga/dataOut/1cm/1cm_81_0_0_8_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x9000000 -m read -f /home/fpga/dataOut/1cm/1cm_81_0_0_9_5.bin -l 0x1000000

