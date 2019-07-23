-- Hello World in Assembler for the Intel 8051 (MSC51)

 Org 0
 
   mov dptr,#msg
   mov R0,#30h  
loop:
   clr a
   movc a,@a+dptr
   jz end
   mov @R0,a
   inc R0
   inc dptr
   sjmp  loop
 
end:
    jmp $
 
msg:
    db 'Hello, World",0