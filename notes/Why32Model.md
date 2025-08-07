# Why 32 bits ?

the most advanced CPUs uses a ISA of 32-bits.

On ARMv7 12 registers, r0 is zero value fixed, r15 is program counter PC, r14 is stack pointer, r13 is fram pointer, plus flags and system registers

On ARM8, 32 generic registers, 35 fr, 34 pc, 33 sp, 33 zr, plus flags and system registers

On RiscV, 32 registers, r0 is zero value fixed, plus flags and system registers and pc

## Opcodes
  
Overall one 32-bit word, keeps 5 bits for opcode, 5 bits for destination Rd, 5 bits for operand R2, 5 bits for operand R1
and 12 bits for immediate or offset value;

### Logical 

    01  R3 =  R2 AND R1
    02  R3 =  R2 OR R1 
    03  R3 =  R2 XOR R1
    
    04  R3 =  R2 SFLT R1
    05  R3 =  R2 SFRT R1
    06  R3 =  R2 SFLA R1
    07  R3 =  R2 SFRA R1
    
### BRANCH

    01  BEQ R2, R1, OFFSET
    02  BNE R2, R1, OFFSET
    03  BLT R2, R1, OFFSET
    04  BGE R2, R1, OFFSET

### ARITHMETIC *

    01 R3 = R2 + R1
    02 R3 = R2 + IMM
    
    * no carry bit, subtraction is converted in addiction by compiler
    
### LOAD and SAVE *

    01 R3 := (R2) + R1
    02 R3 := (R2) + IMM
    03 R3 =: (R2) + R1
    04 R3 =: (R2) + IMM

    * for bytes, half-word, word, dual-word

## JUMP and LINK *

    01 JL RA, R2 + IMM
    02 JR RA, R2 + IMM

    Does:
        RA = PC + 4
        PC = PC + R2 + IMM
        or
        RA = PC + 4
        PC = R2 + IMM

        * one level of nested routines

## EXTRAS

All registers and flags of system controls, as frames, privilegies, asserts and states, depends of model.

