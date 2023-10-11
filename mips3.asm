#g = h + A[8];
.globl main
.text
main:
    lw $t0 , H
    la $s1 , A 
    lw $t1 , 32($s1)
    add $t0, $t0, $t1
    sw $t0, G
    li $v0, 1             
    move $a0, $t0
    syscall    
    li $v0, 10            
    syscall               
.data
    A:       .word   1, 2, 3, 4, 5, 6, 7, 8, 9, 10  
    H:       .word   20                           
    G:       .word   0                             

  