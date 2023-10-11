# A[12] = h + A[8];
.globl main
.text
main:
    # Load the value of h into $t0
    lw $t0, H

    # Load the address of array A into $s1
    la $s1, A

    # Load the value at offset 32 from the base address of A into $t1 (A[8])
    lw $t1, 32($s1)

    # Add h and A[8], storing the result in $t0
    add $t0, $t0, $t1

    # Store the result (h + A[8]) in A[12] at offset 48 from the base address of A
    sw $t0, 48($s1)

    # Print the value of A[12]
    li $v0, 1             # Load the system call code for printing an integer (1) into $v0
    lw $a0, 48($s1)       # Load the value at A[12] into $a0
    syscall               # Make the system call to print the integer

    # Exit the program
    li $v0, 10            # Load the system call code for program exit (10) into $v0
    syscall               # Make the system call to exit the program

.data
    A: .word   1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13  # Array A
    H: .word   20                                          # Value of h
    G: .word   0                                           # Storage for the result
