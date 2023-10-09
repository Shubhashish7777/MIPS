
	.globl main 



    
.text 		

main:
    # Load the first number into $t0 (a)
    lw $t0, A

    # Load the second number into $t1 (b)
    lw $t1, A

    # Add the numbers and store the result in $t2 (a + b)
    add $t2, $t0, $t1

    # Load the third number into $t3 (e)
    lw $t3, E

    # Subtract the third number from $t2 (a + b - e) and store the result in $t4 (d)
    sub $t4, $t2, $t3

    # Print the result
    li $v0, 1               # Load the system call code for printing an integer (1) into $v0
    move $a0, $t4           # Move the result (d) from $t4 to $a0
    syscall                 # Make the system call to print the integer

    # Print a newline for formatting
    li $v0, 4               # Load the system call code for printing a string (4) into $v0
    la $a0, newline         # Load the address of the newline string into $a0
    syscall                 # Make the system call to print the newline

    # Exit the program
    li $v0, 10              # Load the system call code for program exit (10) into $v0
    syscall                 # Make the system call to exit the program

.data
    A:       .word   5        # First number (a)
    B:       .word   7        # Second number (b)
    E:       .word   2        # Third number (e)
    newline: .asciiz "\n"     # Newline character for formatting