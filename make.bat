@echo off
IF EXIST s2built.bin move /Y s2built.bin s2built.prev.bin >NUL
tool\windows\asw -xx -q -A -L -U -E -i . main.asm
tool\windows\p2bin -z=0,saxman-bugged,Size_of_DAC_driver_guess,after main.p s2built.bin
del main.p