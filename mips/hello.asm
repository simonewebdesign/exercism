# Hello World!

# Registers used:
#   $a0 - syscall param -- the string to print.
#   $v0 - syscall param and return value.

# Example:
#   (spim) load "hello.asm"
#   (spim) run
#   Hello World

    .text

main:
    la    $a0, hello_msg  # load the addr of hello_msg into $a0
    li    $v0, 4          # print_string syscall
    syscall

    li    $v0, 10         # exit syscall
    syscall


# Data for the program:
    .data

hello_msg:    .asciiz "Hello World!!£$%\n\n"
