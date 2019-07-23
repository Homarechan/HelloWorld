; Hello World in Assembler for the Darwin Power-PC

.data
.cstring
.align 2
msg:
.asciz "Hello, World!\n"
len = . - msg
.text
.align 2
.globl _start
_start:
li r0,4
li r3,1
lis r4,ha16(msg)
ori r4,r4,lo16(msg)
li r5,len
sc
li r0,1
li r3,0
sc