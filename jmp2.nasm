; RAM[0] = 2
; if RAM[1] - 3 == 0: 
;     RAM[0] = 1

leaw $2, %A
movw %A, %D

leaw $0, %A
movw %D, (%A)

leaw $1, %A
movw (%A), %D
leaw $3, %A
subw %D, %A, %D
leaw $END, %D
jne
nop

leaw $1, %A
movw %A, %D

leaw $0, %A
movw %D, (%A)

