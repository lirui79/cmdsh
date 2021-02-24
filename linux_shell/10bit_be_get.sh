#!/bin/sh

CMD_FILE=(
                  "lsb_le"
                  "lsb_sw"
                  "msb_le"
                  "msb_sw"
                  )
h=3
m=6
xtor_memory_test -x 2 -o 0xC000000 -m read -f /home/fpga/dataOut/10bit_be/10bit_be_${CMD_FILE[h]}_0_0_C_${m}.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x12000000 -m read -f /home/fpga/dataOut/10bit_be/10bit_be_${CMD_FILE[h]}_0_1_12_${m}.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x1A000000 -m read -f /home/fpga/dataOut/10bit_be/10bit_be_${CMD_FILE[h]}_1_0_1A_${m}.bin -l 0x1000000

xtor_memory_test -x 2 -o 0x22000000 -m read -f /home/fpga/dataOut/10bit_be/10bit_be_${CMD_FILE[h]}_1_1_22_${m}.bin -l 0x1000000
