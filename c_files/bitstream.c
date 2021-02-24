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

long align_size(long n, long m) {
     long k = (n + m - 1) / m;
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

// ./bitstream 5.bin 5.h264 0x1000 0x1e 0x10000 0x3503 0x30000 0x34dc 0x50000 0x3342 0x70000 0x342f
int main(int argc, const char* argv[]) {
    
    if (argc < 7) {
        printf("please input *.bin  and  onput  *.h264/h265  head_addr head_size  frame0_addr frame0_size ... frameN_addr frameN_size\n");
        return -1;
    }
    //unsigned long  hf[1024] = {0};
    int num = argc - 3;
    unsigned long  *hf = new unsigned long[num]{0};
    printf("num:%d \n", num);
    for (int i = 0 ; i < num; ++i) {
        hf[i] = getValue(argv[i + 3]);
        printf("%ld \n", hf[i]);
    }

    FILE *fpr = fopen(argv[1], "rb");
    fseek(fpr, 0, SEEK_END);
    unsigned long flen = ftell(fpr);
    fseek(fpr, 0, SEEK_SET);

    unsigned char *data = new unsigned char[flen] {0};
    fread(data, flen, 1, fpr);
    fclose(fpr);

    FILE *fpw = fopen(argv[2], "wb");
    for (int i = 0 ; i < num; i += 2) {
        fwrite(data + hf[i], hf[i + 1], 1, fpw);
    }
    fclose(fpw);
    return 0;
}
