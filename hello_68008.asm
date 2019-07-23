; Hello World in 68008 Assembler (Sinclar QL)

     move.l #0,a0
     lea.l  mess,a1
     move.w $d0,a2
     jsr    (a2)
     rts
mess dc.w   12
     dc.b   'Hello, World!',10
     end