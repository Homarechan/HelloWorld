" Hello world in Assembler for the Electrologica X8

'BEGIN' TEL='1 000 000',  TTY=8
M[24]:
        GOTO(:START)
M[(64+TTY*4)]:
TAR:
M[(64+38*4)]:
TPAR:
        
M['400']:
        
START:
        A=:HELLO DESCR
        TAR[0]=A
        TAR[1]=-A
        A=D18
        TAR[2]=A
        AFON(TTY)
LOOP:   GOTO(:LOOP)
        
D18:    '001 000 000'

HELLO DESCR:
        0
        (17*TEL + :DAG[-1])
        0

DAG:    37
        5
        16
        9
        9
        3
        27
        6
        31
        4
        25
        3
        10
        9
        18
        2
        8