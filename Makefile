#all: mbr.bin

#Makefile: MakefileTest.c
#	cc MakefileTest.c -o MakefileTest

# $< = first dependency
# $@ = target file
# nasm -f bin mbr.asm -o mbr.bin
mbr.bin: mbr.asm
	nasm $< -f bin -o $@
