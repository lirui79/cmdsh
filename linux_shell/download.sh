#!/bin/sh

CMD_DDR_PARAM=(
		"0xC000000"
		"0xB200000"
		)

CMD_SIZE_PARAM=(
		"0x3b4ef"
		"0x1000000"
		)


CMD_PATH=(
                  "/home/fpga/dataOut/haps3/200/"
                  "/home/fpga/dataOut/haps3/1c32_0/"
                  "/home/fpga/dataOut/haps3/1c32_1/"
                  "/home/fpga/dataOut/haps3/2c32/"
                  )
CMD_NAME=(
                  "200"
                  "1c32_0"
                  "yuv"
                  "bin"
                  )

CMD_FILE=(
                  "h265"
                  "h264"
                  "yuv"
                  "bin"
                  )


dec2hex(){
   printf "%X" $1
}

index=0
ver=9

INUM=1
d=0
p=0
f=0
for ((i=0; i < INUM; ++i))
do
n=$(( 0x3 * i + 0xb ))
echo "$n"
a=$(( n * 0x1000000 ))
echo "$a"
n=$(dec2hex $n)
echo "$n"
xtor_memory_test -x 2 -o ${CMD_DDR_PARAM[d]} -m read -f ${CMD_PATH[p]}${CMD_NAME[i]}_"$index"_"$n"_"$ver".${CMD_FILE[f]} -l ${CMD_SIZE_PARAM[d]}

done
