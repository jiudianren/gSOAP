#bin/bash

#启动短信中心
#su root
#530967061
#cd /home/aaav81/gaocheng/smpp/SMPPSim
#bash bash startsmppsim.sh

#新窗口打开


#关闭进程
pkill -9 eUICCSimu
pkill -9 SM-SR
pkill -9 SM-DP

cd  /home/aaav81/RSP_V1.0/Simulator/bin
./eUICCSimu 
SM-SR
SM-DP
