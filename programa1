.data
    init: .asciiz "Entre com a Base maior, menor e a altura do trapesio: \n"

.text
    # Print String
        li $v0, 4 # chamando a syscall para printar a string
        la $a0, init # passando a string para a syscall
        syscall # chamando a syscall


    # INPUT BASE MAIOR
        li $v0, 5 # chamando a syscall read int
        syscall # chamando a syscall

        # Passando valor de $v0 para $t0
        add $t0, $v0, $0 # $t0 = $v0 + $0

    # INPUT BASE MENOR
        li $v0, 5 # chamando a syscall read int
        syscall
        add $t1, $v0, $0

    # INPUT ALTURA
        li $v0, 5
        syscall
        add $t2, $v0, $0

    # Calculando a area do trapezio
        add $t3, $t0, $t1 # $t3 = B($t0) + b($t1)
        mul $t3, $t3, $t2 # $t3 = [B($t0) + b($t1)] * a($t2)
        div $t3, $t3, 2 # {$t3 = [B($t0) + b($t1)] * a($t2)} / 2
 

    
    # PRINT $t3
        li $v0, 1 # chamando a syscall print int
        add $a0, $t3, $0 # passando o valor de $t3 para $a0
        syscall # chamando a syscall


    






