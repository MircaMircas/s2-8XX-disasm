@echo off
IF EXIST s2swbuilt.bin move /Y s2swbuilt.bin s2swbuilt.prev.bin >NUL
tool\windows\asw -xx -q -A -L -U -E -i . main.asm
tool\windows\p2bin -z=0,saxman-bugged,Size_of_DAC_driver_guess,after main.p s2swbuilt.bin
del main.p
