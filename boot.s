#.code32 or .code64         doesnt work booting, wont print A
.code16                     #tell the assembler that we are using 16 bit real mode
.global init                #makes "init" label available to the outside
                            #the standard would be "_start",
                            #chose "init" to illustrate that we can call it anything

init:
    ljmp  $0x07C0, $9       #bootloader internal jump
    ljmpw $0xf000, $0xfff0  #CPU reset/BIOS entry point
    ljmp  $0xf000, $0xe05b  #call BIOS internal function
     jmp  $0xFFFF, $0x0000  #CPU reset entry point
    ljmpw $0xffff, $1       #wont boot
    ljmpw $0xffff, $0       #segment:offset
	mov $0x0e41, %ax        #sets AH to 0xe (function teletype) and al to 0x41 (ASCII "A")
	int $0x10
	hlt                     #halt, waiting next interrupt

#syntax .fill, count, size, value
.fill 510 - (.-init), 1, 0	#add zeroes to make it 510 bytes long
.word 0xaa55                #magic bytes that tell BIOS that this is bootable
