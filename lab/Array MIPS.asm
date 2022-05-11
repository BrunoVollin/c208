# 1
la $s0, a		
lw $t0, c		
lw $t1, b		
sub $t2, $t0, $t1	
sw $t2, 40($s0)		

la $s0, b		
lw $t0, a	
lw $t1, c	
add $t2, $t0, $t1	
sw $t2, 980($s0)	

la $s0, c		
lw $t0, b		
lw $t1, a		
sub $t2, $t0, $t1	
sw $t2, 0($s0)		

# 2
la $s1, b
lw $s2, c
lw $t1, 60($s1)
sub $s0, $t1, $s2

la $s0, a
la $s2, c
lw $t0, 20($s0)
lw $t2, 12($s2)
add $s1, $t0, $t2

la $s0, a
lw $s1, b
lw $t0, 84($s0)
sub $s2, $s1, $t0

# 3
a: .word 4, 5
_j: .word 0

.text
la $s0, a
lw $s1, _j
lw $t0, 0(a)
lw $t1, 4(a)
blt $t0, 5, TRUE
j FALSE

TRUE:	
    addi $t0, $s1, 2
	j end
FALSE:	
    addi $s1, $t1, 10
	j end   
END:	