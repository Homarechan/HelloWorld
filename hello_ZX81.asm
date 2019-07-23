; Hello World in Assembler for the ZX81 (Zilog Z80)

          CALL SPRINT
          DEFM HELLO WORLD.
          DEFB FF
          RET
SPRINT    POP HL
          LD A,(HL)
          INC HL
          PUSH HL
          CP FF
          RET Z
          CALL PRINT
          JR SPRINT