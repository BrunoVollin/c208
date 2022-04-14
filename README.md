# Repo da Matéria de C208

## Conteúdo

### Entadas
Entradas com Int
```assembly
    .text	
	li $v0,5 
    	syscall
    	add $t0,$v0,$0  # $t0 = Input
```
##  Saidas
Saidas com String:
```assembly
    .data
	myString: .asciiz "aobaaaaa!"

    .text
	li $v0, 5
    	la $a0, myString
    	syscall
```
Saidas com Int:
```assembly
   .text	
	li $v0, 1
    	la $a0, 10
    	syscall
```



## Links Úteis:
* [Código dos execícios](https://github.com/BrunoVollin/c208/tree/master/src)
* [Simulador MARS](https://github.com/BrunoVollin/c208/blob/master/Mars4_5.jar)
## Exercícios:
![](
https://raw.githubusercontent.com/BrunoVollin/c208/master/exercicios.png
)
