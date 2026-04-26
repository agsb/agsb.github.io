# Why 32 bits ?

the most advanced CPUs uses a ISA of 32-bits.

On ARMv7, 16 registers, 12 general registers, r0-r7 low ones, r8-r12 high ones, r13 is frame pointer, r14 is stack pointer, r15 is program counter PC, plus flags and system registers. It's a hipersized 6502 ?

On RiscV, 32 registers, r0 is zero value fixed, r2 is link register, plus flags and system registers and program counter.

There are some ISAs for 64 bits also, but is a waste.

On ARM8, 64bits, 30 generic registers, 1 frame pointer, 1 program counter, 1 stack pointer, 1 zero fixed, plus flags and system registers.

## Opcodes
  
Overall one 32-bit word, keeps 5 bits for opcode, 5 bits for destination Rd, 5 bits for operand Rp, 5 bits for operand Rq and 12 bits for immediate or offset value;

### Logical

    01  Rd =  Rp AND Rq
    02  Rd =  Rp OR Rq 
    03  Rd =  Rp XOR Rq
    04  Rd =  NOT Rp
    05  Rd =  NEG Rp

### Shift
    
    01  Rd =  Rp SFLT Rq
    02  Rd =  Rp SFRT Rq
    03  Rd =  Rp SFLA Rq
    04  Rd =  Rp SFRA Rq
    
### Branch

    01  BEQ Rp, Rq, OFFSET
    02  BNE Rp, Rq, OFFSET
    03  BLT Rp, Rq, OFFSET
    04  BGE Rp, Rq, OFFSET
    05  BLTU Rp, Rq, OFFSET
    06  BGEU Rp, Rq, OFFSET

    U is unsigned

### Arithmetic *

    01 Rd = Rp + Rq
    02 Rd = Rp + IMM (upper)
    03 Rd = Rp + IMM (lower)

    04 Rd = Rp * Rq (upper)
    05 Rd = Rp * Rq (lower)
    06 Rd = Rp / Rq (reminder)
    07 Rd = Rp / Rq (quoncient)
    
    all signed
    no carry bit, subtraction is converted in addiction by compiler
    
### Load and Save *

    01 Rd := (Rp) + IMM
    02 (Rp) + IMM := Rd

    for byte, half-word, word, dual-word (word is 32 bits)

    only in ARMs

        01 Rd := (Rp) + Rq ****
        03 Rd =: (Rp) + Rq ****

## JUMP and LINK *

    01 JL Ra, Rp + IMM
    02 JR Ra, Rp + IMM

        Ra = PC + 4
        JL is PC = Rp + IMM
        JR is PC = PC + Rp + IMM

        just one level of nested routines

## EXTRAS

All registers and flags of system controls, as frames, privilegies, asserts and states, depends of model.

