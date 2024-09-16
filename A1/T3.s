.data
array: .word 4, 8, 12, 16, 20, 24, 28
length: .word 7

.text
.globl main

main:
    li t0, 0 # i = 0
    lw t1, length # t1=7
    la t2, array # t2 = address of array
    li t3, 0 # sum = 0

loop:
    beq t0, t1, done # check if i == 7
    lw t6, 0(t2) # load word from array
    andi t4, t0, 1 # t4 = t0 AND 1 = t0 % 2
    beqz t4, addition # if t4 == 0, jump to addition
    j continue

addition:
    add t3, t3, t6 # add to sum
    j continue
    
continue:
    addi t0, t0, 1 # update counter i
    addi t2, t2, 4 # update address to for next word in array
    j loop

done:
    li a0, 10
    ecall