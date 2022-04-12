.data
    init: .asciiz "Entre com seu voto:\n   1 João.\n   2 José.\n   3 Maria. \n"
    computadoJoao: .asciiz "Voto computado para João.\n"
    computadoJose: .asciiz "Voto computado para José.\n"
    computadoMaria: .asciiz "Voto computado para Maria.\n"
    votosJoao: .asciiz "\nVoto computado para João: "
    votosJose: .asciiz "\nVoto computado para José: "
    votosMaria: .asciiz "\nVoto computado para Maria: "
    totalVotos: .asciiz "Total de votos: %d\n"

    
.text
    # While true
    main:
        # Print String
            li $v0, 4 
            la $a0, init
            syscall
    
        # Input Voto
            li $v0, 5
            syscall
            add $t0, $v0, $0
        
        li $t7, 1
        li $t8, 2
        li $t9, 3

        beq $t0, $t7, voto1 # if voto == 1
        beq $t0, $t8, voto2 # if voto == 2
        beq $t0, $t9, voto3 # if voto == 3

        j fim

        voto1:
            li $v0, 4
            la $a0, computadoJoao
            syscall

            add $t1, $t1, 1
        
            j main

        voto2:
            li $v0, 4
            la $a0, computadoJose
            syscall

            add $t2, $t2, 1


            j main

        voto3:
            li $v0, 4
            la $a0, computadoMaria
            syscall

            add $t3, $t3, 1

            j main       
        
        
    beq $t0, 0, fim # if voto == 0
    fim:
            
    # Print String
        li $v0, 4 
        la $a0, totalVotos
        syscall

    # Print String
        li $v0, 4 
        la $a0, votosJoao
        syscall


    # PRINT Votos Joao
        li $v0, 1
        add $a0, $t1, $0
        syscall

    # Print String
        li $v0, 4 
        la $a0, votosJose
        syscall
    
    # PRINT Votos Joao
        li $v0, 1
        add $a0, $t2, $0
        syscall

    # Print String
        li $v0, 4 
        la $a0, votosMaria
        syscall

    # PRINT Votos Joao
        li $v0, 1
        add $a0, $t3, $0
        syscall




