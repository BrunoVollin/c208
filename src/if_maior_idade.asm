.data
    frase1: .asciiz "Entre com sua idade: "
    frase2: .asciiz "Voc� � maior de idade"
    frase3: .asciiz "Voc� � menor de idade"
    
.text
    # Print String 
    li $v0,4
    la $a0,frase1
    syscall
    
    # Read Int
    li $v0,5
    syscall
    
    add $t0,$v0,$0  # move a idade para $t0
    
    bge $t0,18,maior # if (idade >= 18)
        #Menor:
        li $v0,4
        la $a0, frase3
        syscall
        j fim   
        #Maior:  
    maior: li $v0,4
        la $a0, frase2
        syscall
    fim: