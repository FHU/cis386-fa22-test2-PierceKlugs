.data
prompt1: .asciiz "Enter tribonacci(0): "
prompt2: .asciiz "Enter tribonacci(1): "
prompt3: .asciiz "Enter tribonacci(2): "
prompt4: .asciiz "Enter n: "
result1: .asciiz "tribonacci("
result2: .asciiz ") = "
result3: .asciiz "\n"

.text
trib0:
li $v0, 4
la $a0, prompt1
syscall

li $v0, 5
syscall
move $t1, $v0

trib1:
li $v0, 4
la $a0, prompt2
syscall

li $v0, 5
syscall
move $t2, $v0

trib2:
li $v0, 4
la $a0, prompt3
syscall

li $v0, 5
syscall
move $t3, $v0

n:
li $v0, 4
la $a0, prompt4
syscall

li $v0, 5
syscall
move $t0, $v0
move $t7, $v0

main:
beqz $t7, exit #if n == 0 YEET
beq $t7, 1, exit #if n == 1 YEET
beq $t7, 2, exit #if n == 2 YEET


j trib

j exit

trib:
#Yeet Checks
beqz $t7, exit #if n == 0 YEET

#$t6 - d
add $t4, $t1, $t2
add $t4, $t4, $t3

#$t1 - a
add $t1, $zero, $t2

#$t2 - b
add $t2, $zero, $t3

#$t3 - c
add $t3, $zero, $t4


subi $t7, $t7, 1
j trib

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
add $a0, $t1, $zero
syscall

li $v0, 4
la $a0, result3
syscall
