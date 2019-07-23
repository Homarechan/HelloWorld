## Hello World in Assemlber for the MIPS Architecture

.globl main

main:   jal hwbody              #call Hello Word Procedure
       trap 10                 #exit

hwbody: addi $30, $30,-4        #we need to preserve
       sw $4, 0($30)           #existing values in register 4

       addi $4,$0,72           # H
       trap 101
       addi $4,$0,101          # e
       trap 101
       addi $4,$0,108          # l
       trap 101
       trap 101                # l
       addi $4,$0,111          # o
       trap 101
       addi $4,$0,32           # <space>
       trap 101
       addi $4,$0,87           # W
       trap 101
       addi $4,$0,111          # o
       trap 101
       addi $4,$0,114          # r
       trap 101
       addi $4,$0,108          # l
       trap 101
       addi $4,$0,100          # d
       trap 101
       addi $4,$0,33           # !
       trap 101
       addi $4,$0,10           # \n
       trap 101

done:   lw $4, 0($30)           #restore values
       addi $30, $30, 4        #in register 4