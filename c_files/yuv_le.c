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

// ./bitstream 5_yuv.bin 5.yuv 0x1a0 0xf0 0x8 0x10000 0x30000 0x50000 0x70000
int main(int argc, const char* argv[]) {
    
    if (argc < 7) {
        printf("please input *_yuv.bin  and  onput  *.yuv  width height bit frame0_addr ... frameN_addr \n");
        return -1;
    }
    unsigned long width  = getValue(argv[3]);
    unsigned long height = getValue(argv[4]);
    unsigned long bit    = getValue(argv[5]);

    unsigned long lumastride = align_size(width, 32);
    unsigned long chromastride = align_size(height, 32);

    int num = argc - 6;
    
    unsigned long  *fAddr = new unsigned long[num]{0};
    printf("width[%ld -> %ld] height [%ld -> %ld] bit [%ld] num [%d] \n", width, lumastride, height, chromastride, bit, num);
    for (int i = 0 ; i < num; ++i) {
        fAddr[i] = getValue(argv[i + 6]);
        printf("%lx \n", fAddr[i]);
    }

    FILE *fpr = fopen(argv[1], "rb");
    fseek(fpr, 0, SEEK_END);
    unsigned long flen = ftell(fpr);
    fseek(fpr, 0, SEEK_SET);

    unsigned char *data = new unsigned char[flen] {0};
    fread(data, flen, 1, fpr);
    fclose(fpr);

    FILE *fpw = fopen(argv[2], "wb");
 //   for (int i = 0 ; i < num; i += 2) {
 //       fwrite(data + hf[i], hf[i + 1], 1, fpw);
 //   }
    unsigned long stride = width;
    if (bit == 10) {
        lumastride = 2 * lumastride;
        stride = 2 * stride;
    }
    
    int i = 0 , j = 0 ;
    for (i = 0 ; i < num; ++i) {
        unsigned long addr = fAddr[i];
        for(j = 0 ; j < height; ++j) {
            fwrite(data + addr + j * lumastride, stride, 1, fpw);
        }
        addr += lumastride * chromastride;
        for(j = 0 ; j < height / 2; ++j) {
            fwrite(data + addr + j * lumastride / 2, stride / 2, 1, fpw);
        }
        addr += align_size(lumastride / 2, 16) * chromastride / 2;
        for(j = 0 ; j < height / 2; ++j) {
            fwrite(data + addr + j * lumastride / 2, stride / 2, 1, fpw);
        }
    }

    fclose(fpw);
    return 0;
}
