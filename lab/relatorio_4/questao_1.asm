.data
    divider: .asciiz "\n________\n"

.text 
    main:
        # A -> 2 + 5
        li $t1, 2
        li $t2, 5
        add $t0, $t1, $t2
     
        li $v0, 1
        la $a0, ($t0)
        syscall

        li $v0, 4
        la $a0, divider
        syscall

        # B -> 89 + 20
        li $t1, 89
        li $t2, 20
        add $t0, $t1, $t2

        li $v0, 1
        la $a0, ($t0)
        syscall

        li $v0, 4
        la $a0, divider
        syscall

        # C -> 1234 -80
        li $t1, 1234
        li $t2, 80
        sub $t0, $t1, $t2

        li $v0, 1
        la $a0, ($t0)
        syscall

        li $v0, 4
        la $a0, divider
        syscall

        # D -> 70 - 24
        li $t1, 70
        li $t2, 24
        sub $t0, $t1, $t2

        li $v0, 1
        la $a0, ($t0)
        syscall

        li $v0, 4
        la $a0, divider
        syscall

        # E -> 20 - 15
        li $t1, 20
        li $t2, 15
        sub $t0, $t1, $t2

        li $v0, 1
        la $a0, ($t0)
        syscall

        li $v0, 4
        la $a0, divider
        syscall

        

      


    

