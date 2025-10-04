$ as -o boot.o boot.s  
$ ld -o boot.bin --oformat binary -e init boot.o  
https://medium.com/@g33konaut/writing-an-x86-hello-world-boot-loader-with-assembly-3e4c5bdd96cf  
[jmp  $0x07C0, $9](https://chat.deepseek.com/a/chat/s/051fdbd8-b4d1-4afa-83a3-bb21b93b80fc)  
https://www.google.com/search?client=firefox-b-e&q=gnu+assembly+bootloader  

https://stackoverflow.com/questions/2120297/develop-a-bootloader-in-assembly  
nasm -f bin bootloader.asm -o bootloader.bin  
https://dev.to/frosnerd/writing-my-own-boot-loader-3mld  
https://cs.lmu.edu/~ray/notes/nasmtutorial/  
  
https://www.google.com/search?q=makefile&oq=makefile&gs_lcrp=EgZjaHJvbWUyBggAEEUYOdIBCDE1NzVqMGo3qAIAsAIA&sourceid=chrome&ie=UTF-8  
https://makefiletutorial.com/
