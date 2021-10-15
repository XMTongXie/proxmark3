@echo off
color 0a
MODE CON COLS=80 
title ！！！！！！！！！！！！！！PM3指令台BYtssmcu！！！！！！！！！！！！！！
echo.
echo.
echo.
echo              ┏──────────────────────────┓
echo              │常用指令列表：                                      │
echo              │──────────────────────────│
echo              │1.hw tune (天线调谐电压测试，最好把天线立起来)      │
echo              │2.hf 14a reader(读高频卡ID，测试高频卡类型)         │
echo              │3.hf mf chk 0 A ffffffffffff(检查0区A密码是否为f..) │
echo              │4.hf mf mifare (PRNG漏洞破解密码，成功率低，486固件 │
echo              │    不掉线外，630之后的固件，有些卡可以破，有卡些会 │
echo              │    掉线并出现can't slect card）                    │	
echo              │5.hf mf nested 1 0 A ffffffffffff(基于知道其中一个区│
echo              │    的密码，漏洞破解全区密码，示例是0区A密码为f..)  │
echo              │6.hf mf dump (知道密码后，导出卡的数据到二进制文件) │
echo              │7.lf em4x em410xwatch (读取低频卡标签，先执行后放卡)│
echo              │8.hw version(显示固件信息)                          │
echo              │                                                    │
echo              │    更多指令请参考wiki.radiowar.org                 │
echo              │                                                    │
echo              │                                                    │
echo              │                    By:tssmcu 2015-3-21             │
echo              ┗──────────────────────────┛

echo.
echo.

set num=
set /p num= 请输入【设备管理器—端口—Proxmark3】的串口号(例如com5则输入“5”):



Proxmark3 /com%num%

pause.