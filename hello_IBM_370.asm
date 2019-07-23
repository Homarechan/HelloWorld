ITLE 'Hello World for IBM Assembler/370 (VM/CMS)'
HELLO    START
BALR  12,0
USING *,12
*
WRTERM 'Hello, World!'
*
SR    15,15
BR    14
*
END   HELLO