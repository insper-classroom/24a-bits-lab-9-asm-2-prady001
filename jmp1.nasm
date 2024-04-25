; if RAM[1] == 0: 
;     RAM[0] = 1
; else
;     RAM[0] = 2

leaw $2, %A
movw %A, %D

leaw $0, %A
movw %D, (%A) ; RAM[0] = 2

leaw $1, %A
movw (%A), %D

leaw $END, %A
jne
nop

leaw $0, %A
movw $1, (%A)

END: