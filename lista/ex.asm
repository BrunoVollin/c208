.text   
    # a) A[15] = h + B[6];
    # $s0 : h
    # $s1: endereço base de A
    # $s2: endereço base de B

    lw $t0, 24($s0) # $t0 = B[6]
    add $t1, $t0, $s1 # $t1 = h + B[6]
    sw $t1, 60($s1) 

    #------------------------------------#

    # b) A[15] = A[5] + B[6] + B[0];
    # $s1: endereço base de A
    # $s2: endereço base de B

    lw $t0, 20($s1) 
    lw $t1, 12($s2)
    add $t2, $t0, $t1
    sw $t2, 60($s1)

    #------------------------------------#


1 -> read int
2 -> read float
3 -> read double
4 -> read string
5 -> print int
6 -> print float
7 -> print double
8 -> print string

li $v0, 1
syscall
add $t0, $v0, $0

li $v0, 