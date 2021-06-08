#!/bin/sh

xtor_memory_test -x 2 -o 0x28000000 -m read -f /home/fpga/dataOut/1cm/1cm_82_0_0_28_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x29000000 -m read -f /home/fpga/dataOut/1cm/1cm_82_0_0_29_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x2A000000 -m read -f /home/fpga/dataOut/1cm/1cm_82_0_0_2A_5.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x2B000000 -m read -f /home/fpga/dataOut/1cm/1cm_82_0_0_2B_5.bin -l 0x1000000

