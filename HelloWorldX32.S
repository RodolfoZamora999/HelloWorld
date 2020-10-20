.section .text
.global _start
.arm

// Pr
_start:
    mov r0, #1               @ STDOUT
    adr r1, label            @ R1 = dirección de la cadena (string)
    mov r2, #13              @ R2 = tamaño de la cadena
    mov r7, #4               @ R7 = syscall number for 'write'
    svc #0                   @ invocar syscall
_exit:
    mov r7, #1               @ R7 = syscall para salir del sistema 'exit'
    svc #0                   @ invocar syscall
label:
.string "Hello World in ARM32! \n"