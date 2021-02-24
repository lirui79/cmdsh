#!/bin/sh

xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/zero_1G.bin  -l 0x40000000

xtor_memory_test -x 2 -o 0x40000000 -m write_from_file -f /home/fpga/data/zero_1G.bin  -l 0x40000000

xtor_memory_test -x 2 -o 0x80000000 -m write_from_file -f /home/fpga/data/zero_1G.bin  -l 0x40000000

xtor_memory_test -x 2 -o 0xC0000000 -m write_from_file -f /home/fpga/data/zero_1G.bin  -l 0x40000000

xtor_memory_test -x 2 -o 0x800000 -m write_from_file -f /home/fpga/data/testcase.bin  -l 0x800000

xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/firmware.bin  -l 0x1000000

xtor_memory_test -x 2 -o 0x800000 -m write_from_file -f /home/fpga/data/testcase.bin  -l 0x800000

xtor_memory_test -x 2 -o 0x1000000 -m write_from_file -f /home/fpga/data/firmware.bin  -l 0x1000000

xtor_memory_test -x 2 -o 0x2000000 -m write_from_file -f /home/fpga/data/src_all_2M.bin  -l 0x2000000



#xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/zero_1G.bin  -l 0x40000000

#xtor_memory_test -x 2 -o 0x00 -m write_from_file -f /home/fpga/data/firmware.bin  -l 0x2000000

#xtor_memory_test -x 2 -o 0x2000000 -m write_from_file -f /home/fpga/data/src_all_2M.bin -l 0x2000000

