010 ! Hello world in Assembler for the HP-85
020         NAM HELLO
030         DEF RUNTIM
040         DEF TOKENS
050         DEF PARSE
060         DEF ERMSG
070         DEF INIT
100 PARSE   BYT 0,0
110 RUNTIM  BYT 0,0,377,377
120 TOKENS  BYT 377
130 ERMSG   BYT 377
140 !
150 INIT    LDM R26,=MSG
160         ADMD R26,=BINTAB
170         LDM R36,=12D,0
180         JSB =OUTSTR
190         RTN
200 MSG     ASC "Hello World!"
210 BINTAB  DAD 101233
220 OUTSTR  DAD 35052
300         FIN