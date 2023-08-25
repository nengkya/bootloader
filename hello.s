.global _start

_start:
	mov $1, %rax	#system call 1 is write
	mov $1, %rdi	#file handle 1 is stdout
					#destination index register
	mov $message, %rsi	#address of string
						#source index register
	mov $13, %rdx	#number of bytes
	syscall

	mov $60, %rax #system call 60 is exit
	xor %rdi, %rdi
	syscall

message:
	.ascii "Hello World\n"
