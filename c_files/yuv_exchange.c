#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// ./yuv_exchange *.yuv  *.yuv 
int main(int argc, const char* argv[]) {
    
    if (argc < 3) {
        printf("please input *.yuv  and  onput  *.yuv \n");
        return -1;
    }

    FILE *fpr = fopen(argv[1], "rb");
    fseek(fpr, 0, SEEK_END);
    unsigned long flen = ftell(fpr);
    fseek(fpr, 0, SEEK_SET);

    unsigned char *data = new unsigned char[flen] {0};
    fread(data, flen, 1, fpr);
    fclose(fpr);

    for (unsigned long  i = 0 ; i < flen; i += 2) {
        unsigned char tmp = data[i];
        data[i] = data[i + 1];
        data[i + 1] = tmp;
    }

    FILE *fpw = fopen(argv[2], "wb");
    fwrite(data, flen, 1, fpw);

    fclose(fpw);
    return 0;
}
