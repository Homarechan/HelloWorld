; Hello World in VP Assembler for intent (Amiga Anywhere)

.include 'tao'

tool 'home/hello',VP,TF_MAIN,8192,0
    ent (-:-)
        qcall lib/print,(hello_world.p : i~)
        ret ()
    entend

    data

hello_world:
    dc.b "Hello, World!",ASCII_LF,0

toolend