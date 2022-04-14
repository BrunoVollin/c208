.data
    entre: .asciiz "Entre com as 3 posições: \n" 
    posicao1: .asciiz "\nPosição 1: "
    posicao2: .asciiz "\nPosição 2: "
    posicao3: .asciiz "\nPosição 3: " 


.text
    # input A
    li $v0, 5
    syscall
    add $t1, $v0, $0

    # input B
    li $v0, 5
    syscall
    add $t2, $v0, $0

    # input A
    li $v0, 5
    syscall
    add $t3, $v0, $0

    main:
        bgt $t1, $t2, trocaAB
        bgt $t2, $t3, trocaBC
        j fim

    trocaAB:
        add $t0, $t1, $0
        add $t1, $t2, $0
        add $t2, $t0, $0
        j main

    trocaBC:
        add $t0, $t2, $0
        add $t2, $t3, $0
        add $t3, $t0, $0
        j main

    fim:
        
        # output A
        li $v0, 4
        la $a0, posicao1
        syscall

        li $v0, 1
        add $a0, $t1, $0
        syscall


        # output B
        li $v0, 4
        la $a0, posicao2
        syscall 

        li $v0, 1
        add $a0, $t2, $0
        syscall

        # output C
        li $v0, 4
        la $a0, posicao3
        syscall

        li $v0, 1
        add $a0, $t3, $0
        syscall
