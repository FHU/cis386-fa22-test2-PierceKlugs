.data
prompt1: .asciiz "Enter tribonacci(0): "
prompt2: .asciiz "Enter tribonacci(1): "
prompt3: .asciiz "Enter tribonacci(2): "
prompt4: .asciiz "Enter n: "
result1: .asciiz "tribonacci("
result2: .asciiz ") = "


.text
#Input
trib0:
li $v0, 4
la $a0, prompt1
syscall


li $v0, 5
syscall
move $t1, $v0
blt $t1, $zero, trib0

trib1:
li $v0, 4
la $a0, prompt2
syscall

li $v0, 5
syscall
move $t2, $v0
blt $t2, $zero, trib0

trib2:
li $v0, 4
la $a0, prompt3
syscall

li $v0, 5
syscall
move $t3, $v0
blt $t3, $zero, trib0

n:
li $v0, 4
la $a0, prompt4
syscall

li $v0, 5
syscall
move $t0, $v0
move $t7, $t0
blt $t0, $zero, trib0




#Yeet Checks
blt $t0, $zero, exit
beqz $t0, exit #if n == 0 YEET
beq $t0, 1, exit #if n == 1 YEET
beq $t0, 2, exit #if n == 2 YEET

#Indexing LOL
#addi $t0, $t0 1 #n = n + 1

#loop end case
addi $t5, $t0, -3

#Looping Time
loop:
#t4 is i, keep that in mind, t5 is the end case
bgt $t4, $t5, exit

#t6 = a + b + c
add $t6, $t1, $t2
add $t6, $t6, $t3

#a = b
add $t1, $zero, $t2
#b = c
add $t2, $zero, $t3
#c = d
add $t3, $zero, $t6

addi $t4, $t4, 1

j loop

exit:
li $v0, 4
la $a0, result1
syscall

li $v0, 1
add $a0, $t0, $zero
syscall

li $v0, 4
la $a0, result2
syscall

li $v0, 1
add $a0, $t3, $zero
syscall
