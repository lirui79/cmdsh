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
 ./sdk_case sdk_case.bin  caseVer caseIdx instanceCount coreIdx srcIdx codecMode(0|1 2|3  h265 dec/enc  h264 dec/enc)  gopPresetIdx(0|1|2|3|4|5|6|7|8  custom I IPP IBBB IBPBP IBBBP IPPP IBBBB) rotateAngle mirrorDir downScaler(0|2|4) frameTotal
 
 ./sdk_case sdk_case.bin  caseVer caseIdx instanceCount coreIdx srcIdx codecMode  gopPresetIdx rotateAngle mirrorDir downScaler frameTotal

*/


int main(int argc, const char* argv[]) {
    
    if (argc < 4) {
        printf("1). \n  please input ./sdk_case sdk_case.bin caseVer caseIdx \n");
        printf("  1. \n      ./sdk_case sdk_case.bin 0x01 0x20 \n");
        printf("  2. \n      ./sdk_case sdk_case.bin 0x01 0xA1 \n");
        printf("  3. \n      ./sdk_case sdk_case.bin 0x01 0xE0 \n");
        printf("2). \n  please input ./sdk_case sdk_case.bin  caseVer caseIdx instanceCount coreIdx srcIdx codecMode(0|1 2|3  h265 dec/enc  h264 dec/enc)  gopPresetIdx(0|1|2|3|4|5|6|7|8  custom I IPP IBBB IBPBP IBBBP IPPP IBBBB) rotateAngle mirrorDir downScaler(0|2|4) frameTotal \n");
        printf("  1. enc h265\n      ./sdk_case sdk_case.bin 0x02 0x200 1 0x0  0 0x01 0x04 0 0 0 12\n");
        printf("  2. enc h264\n      ./sdk_case sdk_case.bin 0x02 0x201 1 0x1  0 0x03 0x05 0 0 0 12\n");
        printf("  3. dec h265\n      ./sdk_case sdk_case.bin 0x02 0x202 1 0x0 13 0x00 0x04 0 0 0 100\n");
        printf("  4. dec h264\n      ./sdk_case sdk_case.bin 0x02 0x203 1 0x1  8 0x02 0x04 0 0 0 100\n");
        printf("  5. dec h264\n      ./sdk_case sdk_case.bin 0x02 0x203 1 0x1  0 0x02 0x04 0 0 0 5\n");
        return -1;
    }

    unsigned char *data = new unsigned char[0x100000] {0}; 
    unsigned long *param = (unsigned long*)data;
    printf("param file [%s]  [%s %s] \n", argv[1], argv[2], argv[3]);

    unsigned long *cparam = (unsigned long*)data;
    for (unsigned int i = 2; i < argc; ++i) {
        cparam[i - 2] = getValue(argv[i]);
    }

    FILE *fpw = fopen(argv[1], "wb");
    fwrite(data, 0x100000, 1, fpw);
    fclose(fpw);
    return 0;
}
