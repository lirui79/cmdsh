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

//./src_param srcase.bin srcNum srcIdx dataAddr  picWidth  picHeight  bitDepth  frameCnt  codecMode srcFormt size
//
int main(int argc, const char* argv[]) {
    
    if (argc < 12) {
        printf("please input ./src_param srcase.bin srcNum  srcIdx[0-15] dataAddr  picWidth  picHeight  bitDepth[8/10]  frameCnt[>0]  codecMode[hvec - 0 | avc - 2 | yuv - 10]  srcFormt[FORMAT_420 - 0 | FORMAT_422 - 1 | FORMAT_420_P10_16BIT_MSB - 5 | FORMAT_420_P10_16BIT_LSB - 6] size[>0]\n");
        return -1;
    }

    printf("param file [%s]  [%s] \n", argv[1], argv[2]);

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
