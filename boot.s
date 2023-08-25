.code64 	 #tell the assembler that we are using 64 bit mode.
.global init #makes "init" label available to the outside.
			 #the standard would be "_start",
			 #chose "init" to illustrate that we can call it anything.

init:
	ljpmw $0xffff, $0		#jump to the "reset vector", doing a warm reboot
							#physical address FFFF:0000
							#https://en.wikipedia.org/wiki/Reset_vector

.fill 510 - (.-init), 1, 0	#add zeroes to make it 510 bytes long
.word 0xaa55				#magic bytes that tell BIOS that this is bootable
