# Repo da Matéria de C208
## Links Úteis:
* [Código dos execícios](https://github.com/BrunoVollin/c208/tree/master/src)
* [Simulador MARS](https://github.com/BrunoVollin/c208/blob/master/Mars4_5.jar)
* [Conteúdo](#conteúdo)
* [Exercícios](#exercícios)
* [Relatórios lab](https://github.com/BrunoVollin/c208/tree/master/lab)
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
	li $v0, 4
    	la $a0, myString
    	syscall
```
Saidas com Int:
```assembly
   .text	
	li $v0, 1
    	la $a0, 10
    	syscall

	li $v0, 1
    	la $a0, ($t0)
    	syscall
```



## Exercícios:
![](
https://raw.githubusercontent.com/BrunoVollin/c208/master/exercicios.png
)
