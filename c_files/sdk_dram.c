#include <stdio.h>
#include <stdlib.h>
#include <string.h>

unsigned char chartovalue(char c) {
    if (c >= 'A' && c <= 'F')
        return (c - 'A' + 10);
    if (c >= 'a' && c <= 'f')
        return (c - 'a' + 10);
    return (c - '0');
}

unsigned long align_size(unsigned long n, unsigned long m) {
     unsigned long k = (n + m - 1) / m;
     return (k * m);
}

unsigned long getValue(const char *szValue) {
    unsigned long value = 0;
    int mode = 10;
    if ((szValue[0] == '0') && (szValue[1] == 'x'))
         mode = 16;
    value = strtol(szValue, NULL, mode);
    return value;
}

/*
./sdk_dram sdk_dram_map.bin dramMapVer VPU_SDFIRM_BOOT_OFFSET VPU_FIRMWARE_OFFSET  VPU_FIRMWARE_SIZE  VPU_PARAM_OFFSET  VPU_SRC_OFFSET  VPU_DRAM_MAP_OFFSET  VPU_DRAM_PHYSICAL_OFFSET VPU_DRAM_SIZE VPU_HEAP_BASE_OFFSET VPU_HEAP_SIZE FILE_BUFFER_OFFSET FILE_BUFFER_SIZE

./sdk_dram sdk_dram_map.bin 0x1 0x0 0x000000  0x400000  0xA00000  0xC00000  0xE00000  0x21000000 0x80000000 0x1000000 0x20000000 0xF0000000 0x200000

./sdk_dram sdk_dram_map.bin 0x1 0x0 0x000000  0x400000  0xA00000  0xC00000  0xE00000  0x20000000 0xA0000000 0x1000000 0x1F000000 0xF0000000 0x200000

./sdk_dram sdk_dram_map.bin 0x1 0x0 0x000000  0x400000  0xA00000  0xC00000  0xE00000  0x20000000 0xA0000000 0x1000000 0x1F000000 0xF0000000 0x100000

./sdk_dram sdk_dram_map.bin 0x1 0x0 0x000000  0x400000  0xA00000  0xC00000  0xE00000  0x20000000 0xA0000000 0x1000000 0x1F000000 0xF0000000 0x1000000

./sdk_dram sdk_dram_map.bin 0x1 0x0 0x000000  0x400000  0xA00000  0xC00000  0xE00000  0x20000000 0xA0000000 0x1000000 0x1F000000 0xF6000000 0x6000000

./sdk_dram sdk_dram_map.bin 0x2 0x0 0x200000  0x200000  0xA00000  0xC00000  0xE00000  0x21000000 0x80000000 0x1000000 0x20000000 0xF0000000 0x200000

*/

int main(int argc, const char* argv[]) {
    
    if (argc < 15) {
        printf("please input ./sdk_dram sdk_dram_map.bin dramMapVer[>0] VPU_SDFIRM_BOOT_OFFSET[=0] VPU_FIRMWARE_OFFSET[=0 | 0x200000]  VPU_FIRMWARE_SIZE[= 0x400000 | 0x200000]  VPU_PARAM_OFFSET[=0xA00000]  VPU_SRC_OFFSET[=0xC00000]  VPU_DRAM_MAP_OFFSET[=0xE00000]  VPU_DRAM_PHYSICAL_OFFSET[=0x21000000] VPU_DRAM_SIZE[=0x80000000] VPU_HEAP_BASE_OFFSET[=0x1000000] VPU_HEAP_SIZE[=0x20000000] FILE_BUFFER_OFFSET[=0xF6000000] FILE_BUFFER_SIZE[=0x200000]\n");
        printf("1. \n   ./sdk_dram sdk_dram_map.bin 0x1 0x0 0x000000  0x400000  0xA00000  0xC00000  0xE00000  0x21000000 0x80000000 0x1000000 0x20000000 0xF0000000 0x200000 \n");

        printf("2. \n   ./sdk_dram sdk_dram_map.bin 0x1 0x0 0x000000  0x400000  0xA00000  0xC00000  0xE00000  0x20000000 0xA0000000 0x1000000 0x1F000000 0xF0000000 0x200000 \n");

        printf("3. \n   ./sdk_dram sdk_dram_map.bin 0x1 0x0 0x000000  0x400000  0xA00000  0xC00000  0xE00000  0x20000000 0xA0000000 0x1000000 0x1F000000 0xF6000000 0x6000000 \n");

        printf("4. \n   ./sdk_dram sdk_dram_map.bin 0x2 0x0 0x200000  0x200000  0xA00000  0xC00000  0xE00000  0x21000000 0x80000000 0x1000000 0x20000000 0xF0000000 0x200000 \n");
        return -1;
    }

    printf("sdk_dram file [%s]  [%s] \n", argv[1], argv[2]);

    unsigned char *data = new unsigned char[0x100000] {0}; 
    unsigned long *param = (unsigned long*)data;
    for (unsigned int i = 2; i < argc; ++i) {
        param[i - 2] = getValue(argv[i]);
    }

    FILE *fpw = fopen(argv[1], "wb");
    fwrite(data, 0x100000, 1, fpw);
    fclose(fpw);
    return 0;
}
