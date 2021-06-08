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

// ./vpu_param vpu_param.bin  flags caseId instanceCount coreIdx instanceIndex codecMode(0|1 2|3  h265 dec/enc  h264 dec/enc) dataAddr frameAddr picWeight picHeight bitDepth gopPresetIdx(0|1|2|3|4|5|6|7|8  custom I IPP IBBB IBPBP IBBBP IPPP IBBBB) rotateEnable rotateAngle mirrorEnable mirrorDir downScaler(0|2|4) frameTotal
// ./vpu_param vpu_param.bin flags casId instanceCount coreIdx instanceIndex codecMode dataAddr frameAddr picWidth picHeight bitDepth gopPresetIdx RE RA ME MD downScaler frameTotal
//
//
int main(int argc, const char* argv[]) {
    
    if (argc < 4) {
        printf("please input *_param.bin  flags caseId \n");
        return -1;
    }

    unsigned char *data = new unsigned char[0x200000] {0}; 
    unsigned int *param = (unsigned int*)data;
    param[0] = getValue(argv[2]);
    param[1] = getValue(argv[3]);
    printf("param file [%s]  [%x %x] \n", argv[1], param[0], param[1]);
    if (argc < 5) {
        FILE *fpw = fopen(argv[1], "wb");

	fwrite(data, 0x1000000, 1, fpw);
	fclose(fpw);
	return 0;
    }

    unsigned long *cparam = (unsigned long*)(data + 8);
    //cparam[0] = getValue(argv[4]); 
    for (unsigned int i = 4; i < argc; ++i) {
        cparam[i - 4] = getValue(argv[i]);
    }

    FILE *fpw = fopen(argv[1], "wb");
    fwrite(data, 0x200000, 1, fpw);
    fclose(fpw);
    return 0;
}
