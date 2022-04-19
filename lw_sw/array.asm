.data
    myArray:
        .align 2
        .space 16

.text
    move $t0, $zero # indice do array
    move $t1, $zero # valor a ser alocado no array
    li $t2, 16

    loop:
        beq $t0, $t2, end_loop
        sw $t1, myArray($t0) # aloca o valor no array
        addi $t0, $t0, 4
        addi $t1, $t1, 1
        j loop
    
    end_loop:
        move $t0, $zero # indice do array
        imprime:
            beq $t0, $t2, end_imprime

            li $v0, 1
            lw $a0, myArray($t0)
            syscall

            addi $t0, $t0, 4
            j imprime

        end_imprime:
            
