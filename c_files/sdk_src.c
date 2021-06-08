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

./sdk_src sdk_src.bin srcNum srcIdx dataAddr  picWidth  picHeight  bitDepth  frameCnt  codecMode srcFormt size

./sdk_src sdk_src.bin 1 0 0x802000000 7680 4320 10 4 10 5 0x1DA9C000 
./sdk_src sdk_src.bin 1 0 0x803E00000  352  288  8 12 10 0 0x1BD800 
./sdk_src sdk_src.bin 1 0 0x8C0000000 8192 8192  8 4 10 0 0x1E000000 
./sdk_src sdk_src.bin 1 0 0x8FFE00000  352  288  8 12 10 0 0x1BD800 
./sdk_src sdk_src.bin 1 0 0x8FFE00000  1920  1080  8 4 2 0 0x748E9 
./sdk_src sdk_src.bin 1 0 0x8FFE00000  854  480  8 5 10 0 0x2F0580 
./sdk_src sdk_src.bin 1 0 0x8C0000000 8192 8192 10 4 10 0 0x40000000 

*/

int main(int argc, const char* argv[]) {
    
    if (argc < 12) {
        printf("please input ./sdk_src sdk_src.bin srcNum  srcIdx[0-15] dataAddr  picWidth  picHeight  bitDepth[8/10]  frameCnt[>0]  codecMode[hvec - 0 | avc - 2 | yuv - 10]  srcFormt[FORMAT_420 - 0 | FORMAT_422 - 1 | FORMAT_420_P10_16BIT_MSB - 5 | FORMAT_420_P10_16BIT_LSB - 6] size[>0]\n");
        printf("1. \n  ./sdk_src sdk_src.bin 1 0 0x802000000 7680 4320 10 4 10 5 0x1DA9C000 \n");
        printf("2. \n  ./sdk_src sdk_src.bin 1 0 0x803E00000  352  288  8 12 10 0 0x1BD800 \n");
        printf("3. \n  ./sdk_src sdk_src.bin 1 0 0x8C0000000 8192 8192  8 4 10 0 0x1E000000 \n");
        printf("4. \n  ./sdk_src sdk_src.bin 1 0 0x8FFE00000  352  288  8 12 10 0 0x1BD800 \n");
        printf("5. \n  ./sdk_src sdk_src.bin 1 0 0x8C0000000  1920  1080  8 5 2 0 0x500000 \n");
        printf("6. \n  ./sdk_src sdk_src.bin 1 0 0x8FFE00000  854  480  8 5 10 0 0x2F0580 \n");
        printf("7. \n  ./sdk_src sdk_src.bin 1 0 0x8C0000000 8192 8192 10 4 10 0 0x40000000 \n");
        return -1;
    }

    printf("sdk_src file [%s]  [%s] \n", argv[1], argv[2]);

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
