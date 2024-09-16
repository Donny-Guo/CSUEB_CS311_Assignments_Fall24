.text
.globl main

main:
    li x5, 3 # load 3 to x5 (represents number b)
    li x6, 4 # load 4 to x6 (represents number p)
    li x7, 10 # load 10 to x7
    addi x28, x5, 5 # x28 = b + 5; Expected: 8
    addi x29, x6, -2 # x29 = p - 2; Expected: 2
    mul x30, x28, x29 # x30 = (b + 5) * (p - 2); Expected 16
    mul x30, x30, x7 # x30 = x30 * 10; Expected: 160
    srli x30, x30, 2 # x30 = x30 >> 2; Expected: 40

done:
    li a0, 10
    ecall