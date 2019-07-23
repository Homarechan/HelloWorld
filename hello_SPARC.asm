! Hello World in SPARC Assembly Language

    .section			".data1"
    .align		4
.L16:
    .ascii   "Hello, World\n\0"

    .section  ".text"
    .global  main
main:
    save  %sp,-96,%sp
    set  .L16,%o0
    call  printf,1
    nop
    restore