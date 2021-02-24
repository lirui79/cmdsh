#!/bin/sh


#Encode H265: 0x80b000000
../bitstream 1c32_1_0_B_7.bin 1c32_1_0_B_6_h265.h265 0x1000 0x50 0x10000 0x161d 0x30000 0x1532 0x50000 0x1524 0x70000 0x149b 0x90000 0x14de 0xb0000 0x14a7 0xd0000 0x1500 0xf0000 0x145a 0x110000 0x14a4 0x130000 0x1421 0x150000 0x140c 0x170000 0x13de

#Encode H264: 0x80e000000
../bitstream 1c32_1_1_E_7.bin 1c32_1_1_E_6_h264.h264 0x1000 0x1e 0x10000 0x1a41 0x30000 0x1901 0x50000 0x19ad 0x70000 0x18f2 0x90000 0x1910 0xb0000 0x18e9 0xd0000 0x1949 0xf0000 0x187c 0x110000 0x18f4 0x130000 0x17fd 0x150000 0x1821 0x170000 0x180c

#Encode H265: 0x811000000
../bitstream 1c32_1_2_11_7.bin 1c32_1_2_11_6_h265.h265 0x1000 0x4f 0x10000 0x946 0x20000 0x96b 0x30000 0x96b 0x40000 0x976 0x50000 0x97b 0x60000 0x988 0x70000 0x9bd 0x80000 0x988 0x90000 0x9ae 0xa0000 0x9ac 0xb0000 0x99b 0xc0000 0x9a2

#Encode H264: 0x814000000
../bitstream 1c32_1_3_14_7.bin 1c32_1_3_14_6_h264.h264 0x1000 0x1e 0x10000 0x98a 0x20000 0x9a3 0x30000 0x9a3 0x40000 0x9c4 0x50000 0x9d6 0x60000 0x9d9 0x70000 0x9f3 0x80000 0x9db 0x90000 0xa01 0xa0000 0xa07 0xb0000 0xa02 0xc0000 0x9ff

#Encode H265: 0x817000000
../bitstream 1c32_1_4_17_7.bin 1c32_1_4_17_6_h265.h265 0x1000 0x4f 0x10000 0x523 0x30000 0x334 0x50000 0x22a 0x70000 0x13e 0x90000 0xb1 0xb0000 0x77 0xd0000 0x49 0xf0000 0x78 0x110000 0x9e 0x130000 0xd7 0x150000 0xe7 0x170000 0x103

#Encode H264: 0x81a000000
../bitstream   1c32_1_5_1A_7.bin   1c32_1_5_1A_6_h264.h264 0x1000 0x1e 0x10000 0x6ba 0x30000 0x4ac 0x50000 0x35c 0x70000 0x23c 0x90000 0x191 0xb0000 0x114 0xd0000 0x7e 0xf0000 0x132 0x110000 0x19f 0x130000 0x1ee 0x150000 0x222 0x170000 0x253

#Decode YUV: 0x81c000000
../yuv_le    1c32_1_6_1C_7.bin 1c32_1_6_1C_6_yuv.yuv 0xa0 0x78 0x8 0x78000 0x7f800 0x87000 0x8e800 0x96000 0x9d800 0xa5000 0xac800 0xb4000 0xbb800 0xc3000 0xca800

#Decode YUV: 0x81f000000
../yuv_le    1c32_1_7_1F_7.bin 1c32_1_7_1F_6_yuv.yuv 0x160 0x120 0xa 0x4a4000 0x4ee400 0x538800 0x582c00 0x5cd000 0x617400 0x661800 0x6abc00 0x6f6000 0x740400 0x78a800 0x7d4c00

#Decode YUV: 0x822000000
../yuv_le    1c32_1_8_22_7.bin 1c32_1_8_22_6_yuv.yuv 0x160 0x120 0x8 0x252000 0x277200 0x29c400 0x2c1600 0x2e6800 0x30ba00 0x330c00 0x355e00 0x37b000 0x3a0200 0x3c5400 0x3ea600

#Decode YUV: 0x825000000
../yuv_le    1c32_1_9_25_7.bin 1c32_1_9_25_6_yuv.yuv 0x1a0 0xf0 0xa 0x4e0000 0x52e000 0x57c000 0x5ca000 0x618000 0x666000 0x6b4000 0x702000 0x750000 0x79e000 0x7ec000 0x83a000

#Decode YUV: 0x828000000
../yuv_le   1c32_1_10_28_7.bin  1c32_1_10_28_6_yuv.yuv 0x1a0 0xf0 0x8 0x270000 0x297000 0x2be000 0x2e5000 0x30c000 0x333000 0x35a000 0x381000 0x3a8000 0x3cf000 0x3f6000 0x41d000

#Decode YUV: 0x82b000000
../yuv_le   1c32_1_11_2B_7.bin  1c32_1_11_2B_6_yuv.yuv 0xa0 0x78 0x8 0x78000 0x7f800 0x87000 0x8e800 0x96000 0x9d800 0xa5000 0xac800 0xb4000 0xbb800 0xc3000 0xca800

#Decode YUV: 0x82e000000
../yuv_le   1c32_1_12_2E_7.bin  1c32_1_12_2E_6_yuv.yuv 0x160 0x120 0xa 0x4a4000 0x4ee400 0x538800 0x582c00 0x5cd000 0x617400 0x661800 0x6abc00 0x6f6000 0x740400 0x78a800 0x7d4c00

#Decode YUV: 0x831000000
../yuv_le   1c32_1_13_31_7.bin  1c32_1_13_31_6_yuv.yuv 0x160 0x120 0x8 0x252000 0x277200 0x29c400 0x2c1600 0x2e6800 0x30ba00 0x330c00 0x355e00 0x37b000 0x3a0200 0x3c5400 0x3ea600

#Decode YUV: 0x834000000
../yuv_le    1c32_1_14_34_7.bin  1c32_1_14_34_6_yuv.yuv 0x1a0 0xf0 0xa 0x4e0000 0x52e000 0x57c000 0x5ca000 0x618000 0x666000 0x6b4000 0x702000 0x750000 0x79e000 0x7ec000 0x83a000

#Decode YUV: 0x837000000
../yuv_le   1c32_1_15_37_7.bin  1c32_1_15_37_6_yuv.yuv 0x1a0 0xf0 0x8 0x270000 0x297000 0x2be000 0x2e5000 0x30c000 0x333000 0x35a000 0x381000 0x3a8000 0x3cf000 0x3f6000 0x41d000


#Encode H265: 0x83b000000
../bitstream  1c32_1_16_3B_7.bin  1c32_1_16_3B_6_h265.h265 0x1000 0x50 0x10000 0x161d 0x30000 0x1532 0x50000 0x1524 0x70000 0x149b 0x90000 0x14de 0xb0000 0x14a7 0xd0000 0x1500 0xf0000 0x145a 0x110000 0x14a4 0x130000 0x1421 0x150000 0x140c 0x170000 0x13de

#Encode H264: 0x83e000000
../bitstream  1c32_1_17_3E_7.bin  1c32_1_17_3E_6_h264.h264 0x1000 0x1e 0x10000 0x1a41 0x30000 0x1901 0x50000 0x19ad 0x70000 0x18f2 0x90000 0x1910 0xb0000 0x18e9 0xd0000 0x1949 0xf0000 0x187c 0x110000 0x18f4 0x130000 0x17fd 0x150000 0x1821 0x170000 0x180c

#Encode H265: 0x841000000
../bitstream  1c32_1_18_41_7.bin  1c32_1_18_41_6_h265.h265 0x1000 0x4f 0x10000 0x946 0x20000 0x96b 0x30000 0x96b 0x40000 0x976 0x50000 0x97b 0x60000 0x988 0x70000 0x9bd 0x80000 0x988 0x90000 0x9ae 0xa0000 0x9ac 0xb0000 0x99b 0xc0000 0x9a2

#Encode H264: 0x844000000
../bitstream  1c32_1_19_44_7.bin  1c32_1_19_44_6_h264.h264 0x1000 0x1e 0x10000 0x98a 0x20000 0x9a3 0x30000 0x9a3 0x40000 0x9c4 0x50000 0x9d6 0x60000 0x9d9 0x70000 0x9f3 0x80000 0x9db 0x90000 0xa01 0xa0000 0xa07 0xb0000 0xa02 0xc0000 0x9ff

#Encode H265: 0x847000000
../bitstream  1c32_1_20_47_7.bin  1c32_1_20_47_6_h265.h265 0x1000 0x4f 0x10000 0x523 0x30000 0x334 0x50000 0x22a 0x70000 0x13e 0x90000 0xb1 0xb0000 0x77 0xd0000 0x49 0xf0000 0x78 0x110000 0x9e 0x130000 0xd7 0x150000 0xe7 0x170000 0x103

#Encode H264: 0x84a000000
../bitstream  1c32_1_21_4A_7.bin  1c32_1_21_4A_6_h264.h264 0x1000 0x1e 0x10000 0x6ba 0x30000 0x4ac 0x50000 0x35c 0x70000 0x23c 0x90000 0x191 0xb0000 0x114 0xd0000 0x7e 0xf0000 0x132 0x110000 0x19f 0x130000 0x1ee 0x150000 0x222 0x170000 0x253


#Decode YUV: 0x84c000000
../yuv_le    1c32_1_22_4C_7.bin  1c32_1_22_4C_6_yuv.yuv 0xa0 0x78 0x8 0x78000 0x7f800 0x87000 0x8e800 0x96000 0x9d800 0xa5000 0xac800 0xb4000 0xbb800 0xc3000 0xca800

#Decode YUV: 0x84f000000
../yuv_le    1c32_1_23_4F_7.bin  1c32_1_23_4F_6_yuv.yuv 0x160 0x120 0xa 0x4a4000 0x4ee400 0x538800 0x582c00 0x5cd000 0x617400 0x661800 0x6abc00 0x6f6000 0x740400 0x78a800 0x7d4c00

#Decode YUV: 0x852000000
../yuv_le    1c32_1_24_52_7.bin  1c32_1_24_52_6_yuv.yuv 0x160 0x120 0x8 0x252000 0x277200 0x29c400 0x2c1600 0x2e6800 0x30ba00 0x330c00 0x355e00 0x37b000 0x3a0200 0x3c5400 0x3ea600

#Decode YUV: 0x855000000
../yuv_le    1c32_1_25_55_7.bin  1c32_1_25_55_6_yuv.yuv 0x1a0 0xf0 0xa 0x4e0000 0x52e000 0x57c000 0x5ca000 0x618000 0x666000 0x6b4000 0x702000 0x750000 0x79e000 0x7ec000 0x83a000

#Decode YUV: 0x858000000
../yuv_le    1c32_1_26_58_7.bin  1c32_1_26_58_6_yuv.yuv 0x1a0 0xf0 0x8 0x270000 0x297000 0x2be000 0x2e5000 0x30c000 0x333000 0x35a000 0x381000 0x3a8000 0x3cf000 0x3f6000 0x41d000

#Decode YUV: 0x85b000000
../yuv_le    1c32_1_27_5B_7.bin  1c32_1_27_5B_6_yuv.yuv 0xa0 0x78 0x8 0x78000 0x7f800 0x87000 0x8e800 0x96000 0x9d800 0xa5000 0xac800 0xb4000 0xbb800 0xc3000 0xca800

#Decode YUV: 0x85e000000
../yuv_le    1c32_1_28_5E_7.bin  1c32_1_28_5E_6_yuv.yuv 0x160 0x120 0xa 0x4a4000 0x4ee400 0x538800 0x582c00 0x5cd000 0x617400 0x661800 0x6abc00 0x6f6000 0x740400 0x78a800 0x7d4c00

#Decode YUV: 0x861000000
../yuv_le    1c32_1_29_61_7.bin  1c32_1_29_61_6_yuv.yuv 0x160 0x120 0x8 0x252000 0x277200 0x29c400 0x2c1600 0x2e6800 0x30ba00 0x330c00 0x355e00 0x37b000 0x3a0200 0x3c5400 0x3ea600

#Decode YUV: 0x864000000
../yuv_le    1c32_1_30_64_7.bin  1c32_1_30_64_6_yuv.yuv 0x1a0 0xf0 0xa 0x4e0000 0x52e000 0x57c000 0x5ca000 0x618000 0x666000 0x6b4000 0x702000 0x750000 0x79e000 0x7ec000 0x83a000

#Decode YUV: 0x867000000
../yuv_le    1c32_1_31_67_7.bin  1c32_1_31_67_6_yuv.yuv 0x1a0 0xf0 0x8 0x270000 0x297000 0x2be000 0x2e5000 0x30c000 0x333000 0x35a000 0x381000 0x3a8000 0x3cf000 0x3f6000 0x41d000
