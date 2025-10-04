hello:			 #must labeled or recipe commences before first target. Stop.
				 #recipe commences means instruction start
	echo "hello" #all command must tab indent or missing separator. Stop.
#nasm -f bin mbr.asm -o mbr.bin
#
mbr.bin: mbr.asm
	nasm $< -f bin -o $@
