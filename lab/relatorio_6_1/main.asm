
#1
# if a == b
beq $t0, $t1, igual # if (a == b)
    # b = a + c
    add $t1, $t0, $t3
    # C = B - C
    sub $t3, $t1, $t2
    j fim
    
igual: 
    add $t3, $t0, $t1 # c = a + b
    add $t0, $t1, - $t3 # a = b - c

fim:

#_________________________________________

#2
# if a == b
beq $t0, $t1, igual2 # if (a == b)
    # b = a + c
    add $t1, $t0, $t3
    #c = b - c
    sub $t3, $t1, $t2
    j fim

igual2:
    # c = a + b
    add $t3, $t0, $t1
    # a = b - c
    sub $t0, $t1, $t3

fim:
#_________________________________________

#3
# if a > b
bgt $t0, $t1, maior # if (a > b)
    #b = a -c
    sub $t1, $t0, $t3
    # c = b + c
    add $t3, $t1, $t3
    j fim

maior:
    # c = a - b
    sub $t3, $t0, $t1
    # a = b + c
    add $t0, $t1, $t3

fim:
#_________________________________________

#4
# if a < b
blt $t0, $t1, menor # if (a < b)
    # b = a + c
    add $t1, $t0, $t3
    # c = b - c
    sub $t3, $t1, $t3
    j fim

menor: 
    # c = a + b
    add $t3, $t0, $t1
    # a = b - c
    sub $t0, $t1, $t3

fim:

#_________________________________________

# i = 10
li $t0, 10
# j = 0
li $t1, 0

#while (i > 0)
while: 
beq $t0, $0, fim # if (i == 0)

        # j = j + 5
        add $t1, $t1, 5
        # i = i - 2
        sub $t0, $t0, 2


        j while # goto while

fim:





    




