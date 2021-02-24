#!/bin/sh


#Encode H265: 0x808000000
../bitstream 10bit_40_0_0_8_5.bin  10bit_40_0_0_8_5_h265.h265 0x1000 0x50 0x10000 0x4fb 0x50000 0x339 0x90000 0x226 0xd0000 0x13e 0x110000 0xac 0x150000 0x6d 0x190000 0x46 0x1d0000 0x72 0x210000 0x99 0x250000 0xd3 0x290000 0xda 0x2d0000 0x108

#Encode H264: 0x80e000000
../bitstream 10bit_40_0_1_E_5.bin  10bit_40_0_1_E_5_h264.h264 0x1000 0x20 0x10000 0x1a4f 0x50000 0x18e3 0x90000 0x1982 0xd0000 0x18e8 0x110000 0x191d 0x150000 0x18c6 0x190000 0x195c 0x1d0000 0x1879 0x210000 0x18f2 0x250000 0x180d 0x290000 0x181b 0x2d0000 0x17fd

#Encode H264: 0x814000000
../bitstream 10bit_40_1_0_14_5.bin  10bit_40_1_0_14_5_h264.h264 0x1000 0x1f 0x10000 0x69d 0x50000 0x49e 0x90000 0x336 0xd0000 0x239 0x110000 0x16b 0x150000 0x110 0x190000 0x80 0x1d0000 0x120 0x210000 0x182 0x250000 0x1d3 0x290000 0x1ff 0x2d0000 0x23d

#Encode H265: 0x81a000000
../bitstream 10bit_40_1_1_1A_5.bin  10bit_40_1_1_1A_5_h265.h265 0x1000 0x50 0x10000 0x1602 0x50000 0x14d9 0x90000 0x153c 0xd0000 0x147f 0x110000 0x14cb 0x150000 0x1499 0x190000 0x14df 0x1d0000 0x1466 0x210000 0x14b9 0x250000 0x1406 0x290000 0x13f9 0x2d0000 0x13e0


#Decode YUV: 0x804000000
../yuv_le 10bit_5F_0_0_4_5.bin  10bit_5F_0_0_4_5_yuv.yuv 0x160 0x120 0xa 0x4a4000 0x4ee400 0x538800 0x582c00 0x5cd000 0x617400 0x661800 0x6abc00 0x6f6000 0x740400 0x78a800 0x7d4c00

#Decode YUV: 0x808000000
../yuv_le 10bit_5F_0_1_8_5.bin  10bit_5F_0_1_8_5_yuv.yuv 0x160 0x120 0xa 0x4a4000 0x4ee400 0x538800 0x582c00 0x5cd000 0x617400 0x661800 0x6abc00 0x6f6000 0x740400 0x78a800 0x7d4c00

#Decode YUV: 0x80c000000
../yuv_le  10bit_5F_1_0_C_5.bin 10bit_5F_1_0_C_5_yuv.yuv 0x1a0 0xf0 0xa 0x4e0000 0x52e000 0x57c000 0x5ca000 0x618000 0x666000 0x6b4000 0x702000 0x750000 0x79e000 0x7ec000 0x83a000

#Decode YUV: 0x810000000
../yuv_le 10bit_5F_1_1_10_5.bin 10bit_5F_1_1_10_5_yuv.yuv 0x1a0 0xf0 0xa 0x4e0000 0x52e000 0x57c000 0x5ca000 0x618000 0x666000 0x6b4000 0x702000 0x750000 0x79e000 0x7ec000 0x83a000
