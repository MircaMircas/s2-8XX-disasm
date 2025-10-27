#!/bin/bash
if test -f s2swbuilt.bin; then
	mv -f s2swbuilt.bin s2swbuilt.prev.bin
fi
./tool/linux/asl -xx -q -A -L -U -E -i . main.asm
./tool/linux/p2bin -z=0,saxman-bugged,Size_of_DAC_driver_guess,after main.p s2swbuilt.bin
rm -f main.p
