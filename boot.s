.code64 	 #tell the assembler that we are using 64 bit mode.
.global init #makes "init" label available to the outside.
			 #the standard would be "_start",
			 #chose "init" to illustrate that we can call it anything.

init:
	jmp init

.fill 510 - (.-init), 1, 0	#add zeroes to make it 510 bytes long
