; Hello world in Z80 Assembly for CP/M

BDOS    equ     05h
WRTLINE equ     09h
;
        org     0100h
        lxi     d,sHello
        mvi     c,WRTLINE
        call    BDOS
        ret
;
sHello  db      'Hello, World!$'