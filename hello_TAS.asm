-- Hello world in TAS Assembler for the TR 440 --

HELLO.=SEGM,XBA VB616, SSR 6 16,
FB616=R&ENDE,
 
VB616=FB616/AG, 3/H, TEXT/AG, 3/H,
TEXT=''*020Hello, World!'',
ENDE,