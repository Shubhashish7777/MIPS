.globl main 
    
.text 		

main:
    # Load the first number into $t0 (g)
    lw $t0, G

    # Load the second number into $t1 (h)
    lw $t1, H

    # Add the numbers and store the result in $t2 (g + h)
    add $t2, $t0, $t1

    # Load the first number into $t3 (i)
    lw $t3, I

    # Load the second number into $t4 (j)
    lw $t4, J

    # Add the numbers and store the result in $t5 (i + j)
    add $t5, $t3, $t4

    sub $t6, $t5, $t3

    # Print the result
    li $v0, 1               # Load the system call code for printing an integer (1) into $v0
    move $a0, $t6          # Move the result (d) from $t4 to $a0
    syscall                 # Make the system call to print the integer

    # Print a newline for formatting
    li $v0, 4               # Load the system call code for printing a string (4) into $v0
    la $a0, newline         # Load the address of the newline string into $a0
    syscall                 # Make the system call to print the newline

    # Exit the program
    li $v0, 10              # Load the system call code for program exit (10) into $v0
    syscall                 # Make the system call to exit the program

.data
    G:       .word   5        # First number (g)
    H:       .word   7        # Second number (h)
    I:       .word   2        # Third number (i)
    J:       .word   5        #Fourth number (j)
    newline: .asciiz "\n"     # Newline character for formatting