#!/bin/sh


dec2hex(){
   printf "0X%X" $1
}

coreIdx0=0
instanceIndex0=0
codecMode0=1
dataAddr0=0x808000000
frameAddr0=0x81C000000
picWeight0=352
picHeight0=288
bitDepth0=8
gopPresetIdx0=1
rotateEnable0=0
rotateAngle0=0
mirrorEnable0=0
mirrorDir0=0
downScaler0=0
frameTotal0=2000

coreIdx1=0
instanceIndex1=0
codecMode1=3
dataAddr1=0x808000000
frameAddr1=0x81F000000
picWeight1=352
picHeight1=288
bitDepth1=8
gopPresetIdx1=1
rotateEnable1=0
rotateAngle1=0
mirrorEnable1=0
mirrorDir1=0
downScaler1=0
frameTotal1=2000

INUM=7

NUM=0
DDROFFSET=0x6000000

for ((i=0; i < INUM; ++i))
do

PARAM=$PARAM" $coreIdx0 $instanceIndex0 $codecMode0 $dataAddr0 $frameAddr0 $picWeight0 $picHeight0 $bitDepth0 $gopPresetIdx0 $rotateEnable0 $rotateAngle0 $mirrorEnable0 $mirrorDir0 $downScaler0 $frameTotal0 "
gopPresetIdx0=$(( gopPresetIdx0 + 1 ))
instanceIndex0=$(( instanceIndex0 + 1 ))
NUM=$(( NUM + 1 ))
frameAddr0=$(( frameAddr0 + DDROFFSET ))
frameAddr0=$(dec2hex $frameAddr0)

PARAM=$PARAM" $coreIdx1 $instanceIndex1 $codecMode1 $dataAddr1 $frameAddr1 $picWeight1 $picHeight1 $bitDepth1 $gopPresetIdx1 $rotateEnable1 $rotateAngle1 $mirrorEnable1 $mirrorDir1 $downScaler1 $frameTotal1 "
gopPresetIdx1=$(( gopPresetIdx1 + 1 ))
instanceIndex1=$(( instanceIndex1 + 1 ))
NUM=$(( NUM + 1 ))
frameAddr1=$(( frameAddr1 + DDROFFSET ))
frameAddr1=$(dec2hex $frameAddr1)

#
done

echo $PARAM


./vpu_param  testcase.bin 2 0x200 $NUM $PARAM


#./vpu_param  testcase.bin  
# 	flags caseId 
#  		instanceCount 
#			coreIdx instanceIndex codecMode(0|1 2|3  h265 dec/enc  h264 dec/enc) 
#			dataAddr frameAddr picWeight picHeight bitDepth gopPresetIdx(0|1|2|3|4|5|6|7|8  custom I IPP IBBB IBPBP IBBBP IPPP IBBBB) 
#			rotateEnable rotateAngle mirrorEnable mirrorDir 
# 			downScaler(0|2|4) 
#			frameTotal

