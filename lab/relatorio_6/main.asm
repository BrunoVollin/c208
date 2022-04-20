.text
    questao1:
        li $t0, 10
        li $t1, 25
        li $t2, 43
        li $t3, 89
        li $v0, 8
        li $v1, 4

        srl $t4, $t0, $v0
        srl $t5, $t1, $v0
        srl $t6, $t2, $v0
        srl $t7, $t3, $v0
        sll $t4, $t0, $v1
        sll $t5, $t1, $v1
        sll $t6, $t2, $v1
        sll $t7, $t3, $v1

    questao2:
        li $t0, 324
        li $t1, 100
        li $t2, 2018
        li $t3, 1970
        li $t4, 33
        li $t5, 66

        and $s1, $t0, $t1
        and $s2, $t2, $t3
        and $s3, $t5, $t4

    questao3:
        or $s1,$t0,$t1
        or $s2,$t2,$t3
        or $s3,$t4,$t5

    questao4:
        nor $s1,$t0,$t1
        nor $s2,$t2,$t3
        nor $s3,$t5,$t4