#1                       ;error: `#' expects a line number
my_data#section          ;# is a character that can be used within a label's name to define a valid identifier,
                         ;along with letters, numbers, underscore, $, @, ~, ., and ?
                         ;it does not have a special functional meaning on its own,
                         ;but serves to distinguish a label from other keywords or reserved words in the assembly code

;org 0x7c00
;bit 16                  error: parser: instruction expected
;bits 16
;[bits 16]

;jmp 0x7c00:0x0

;times 510 - ($-$$) db 0 error

mov ah, 0x0E
mov al, 0x41
int 0x10

jmp 0x7c00:0x0

;dw 0xaa55               error
times 510 - ($-$$) db 0

;dw aa55h error: symbol `aa55h' not defined
;dw 0aa55h
dw 0xaa55
