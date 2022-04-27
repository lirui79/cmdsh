#！/bin/sh

#proc_name="sshd"
proc_name="testClient"
proc_path="/home/embedfire/workspace/testNet/NetCore-master/Client/"

time=$(date +%Y-%m-%d)
#proc_log="/var/log/"${proc_name}"-"${time}".log"
proc_log="/home/embedfire/workspace/"${proc_name}"-"${time}".log"

echo ${proc_path}${proc_name} "log:" ${proc_log}
#${proc_name}  $1 > ${proc_log} &
#${proc_path}${proc_name}  $1 &

${proc_path}${proc_name} $1 > ${proc_log} &

proc_pid=$(ps -elf|grep ${proc_name}|grep -v grep|head -n 1|awk '{print $4}')

echo ${proc_name} "pid:" ${proc_pid}

sleep 30

kill -9 ${proc_pid}