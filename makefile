
all: xs.bin

lbr: xs.lbr

clean:
	rm -f xs.lst
	rm -f xs.bin
	rm -f xs.lbr

xs.bin: xs.asm include/bios.inc include/kernel.inc
	asm02 -L -b xs.asm
	rm -f xs.build

xs.lbr: xs.bin
	rm -f xs.lbr
	lbradd xs.lbr xs.bin

