-- Hello World in CICS COBOL

000100        IDENTIFICATION DIVISION.                           
000200        PROGRAM-ID. HELLO.                                 
000300       * HELLO WORLD IN CICS COBOL.                        
000400        AUTHOR. ROBERT GOSLING.                            
000500        ENVIRONMENT DIVISION.                              
000600        DATA DIVISION.                                     
000700        WORKING-STORAGE SECTION.                           
000800        01 WS-DATA-AREA PIC X(80) VALUE "HELLO WORLD!".    
000900        PROCEDURE DIVISION.                                
001000            EXEC CICS SEND FROM (WS-DATA-AREA) END-EXEC.   
001100            EXEC CICS RETURN END-EXEC.