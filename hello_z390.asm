; Hello World for z390 IBM compatible mainframe assembler

HELLO CSECT
    USING *,15
    WTO 'Hello, World!'
    BR 14
    END