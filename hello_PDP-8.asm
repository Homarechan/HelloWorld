/ Hello World in Assembler for the DEC PDP-8
*200
hello,    cla cll
        tls
        tad charac
        dca ir1
        tad m6
        dca count
next,    tad i ir1
        jms type
        isz count
        jmp next
        hlt

type,    0
        tsf
        jmp .-1
        tls
        cla
        jmp i type
charac,    .
        310 / H
        305 / E
        314 / L
        314 / L
        317 / O
        254 / ,
        240 /
        327 / W
        317 / O
        322 / R
        314 / L
        304 / D
        241 / !
m6,        -15
count,    0
ir1 = 10
$