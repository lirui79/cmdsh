
ffmpeg.exe -f rawvideo -pixel_format yuv420p10le -s 7680x4320  -i we_8k_10bit_50frames.yuv -vf scale=8192:8192 -c:v rawvideo -pix_fmt yuv420p10le we_10bit_8192x8192.yuv