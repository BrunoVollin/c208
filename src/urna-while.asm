.data
    init: .asciiz "Entre com seu voto:\n   1 João.\n   2 José.\n   3 Maria. \n"
    computadoJoao: .asciiz "Voto computado para João.\n"
    computadoJose: .asciiz "Voto computado para José.\n"
    computadoMaria: .asciiz "Voto computado para Maria.\n"
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

        beq $t0, 1, voto1 # if voto == 1
        voto1:
            li $v0, 4
            la $a0, computadoJoao
            syscall

            add $t1, $t1, 1
        
            j main
        

        beq $t0, 2, voto2 # if voto == 2
        voto2:
            li $v0, 4
            la $a0, computadoJose
            syscall

            add $t2, $t2, 1


            j main

        beq $t0, 3, voto3 # if voto == 3
        voto3:
            li $v0, 4
            la $a0, computadoMaria
            syscall

            add $t3, $t3, 1

            j main       
        
        
        beq $t0, 0, fim # if voto == 0
        fim:
            



    # PRINT Votos Joao

        li $v0, 1
        add $a0, $t1, $0
        syscall



