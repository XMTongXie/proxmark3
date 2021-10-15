@echo off
color 0a
MODE CON COLS=80

set dump=
set /p dump= 请输入dump出来数据的文件名（例如dumpdata.bin）:
bin2text.py %dump% %dump%.eml
pause
