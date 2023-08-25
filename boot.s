.code64 	 #tell the assembler that we are using 64 bit mode.
.global init #makes "init" label available to the outside.
			 #the standard would be "_start",
			 #chose "init" to illustrate that we can call it anything.

init:
	mov $0x0e41, %ax		#sets AH to 0xe (function teletype/write to screen).
							#sets AL to 0x41 (ascii "A").
	int $0x10
	hlt						#halt until the next external interrupt is fired.

.fill 510 - (.-init), 1, 0	#add zeroes to make it 510 bytes long.
.word 0xaa55				#magic bytes that tell BIOS that this is bootable.
