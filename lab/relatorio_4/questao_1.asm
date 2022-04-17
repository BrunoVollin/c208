.text 
    li $t1, 2
    li $t2, 5

    add $t0, $t1, $t2
    


        li $v0, 1
        la $a0, ($t0)
        syscall


    

