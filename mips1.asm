# i = 10
li $t0, 10
# j = 0
li $t1, 0

#while (i > 0)
while: 
beq $t0, $0, fim # if (i == 0)

        # print i
        li $v0, 1
    	la $a0, ($t0)
    	syscall
        
        # j = j + 5
        add $t1, $t1, 5
        # i = i - 2
        sub $t0, $t0, 2



        j while # goto while

fim:

