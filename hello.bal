Hello World in IBM mainframe Basic Assembler Language (BAL)

HELLO    CSECT
         STM   R14,R12,12(R13)
         LR    R12,R15
         USING HELLO,R12
         LA    R10,SAVEAREA
         ST    R13,4(R10)
         ST    R10,8(R13)
         LR    R13,R10
*
         WTO   'HELLO WORLD',ROUTCDE=1
*
         L     R13,4(R13)
         LM    R14,R12,12(R13)
         SR    R15,R15
         BCR   B'1111',R14
*
SAVEAREA DS    18F
         LTORG
R0       EQU   0
R1       EQU   1
R2       EQU   2
R3       EQU   3
R4       EQU   4
R5       EQU   5
R6       EQU   6
R7       EQU   7
R8       EQU   8
R9       EQU   9
R10      EQU   10
R11      EQU   11
R12      EQU   12
R13      EQU   13
R14      EQU   14
R15      EQU   15
         END   HELLO