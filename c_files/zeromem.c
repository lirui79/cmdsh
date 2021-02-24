#include <stdio.h>
#include <stdlib.h>
#include <string.h>

unsigned long getValue(const char *szValue) {
    unsigned long value = 0;
    int mode = 10;
    if ((szValue[0] == '0') && (szValue[1] == 'x'))
         mode = 16;
    value = strtol(szValue, NULL, mode);
    return value;
}

// ./zeromem   zero_256M.bin 0x10000000
int main(int argc, const char* argv[]) {
    if(argc < 3) {
        printf("please output *.bin  and  input size\n");
        return -1;
    }

    unsigned long sz = getValue(argv[2]);
    unsigned char *data = new unsigned char[sz] {0};
    FILE *fpw = fopen(argv[1], "wb");
    fwrite(data, sz, 1, fpw);
    fclose(fpw);
    return 0;
}
