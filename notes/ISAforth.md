_this file is a STUB_

# IS A Forth

The original specification of Machine Forth, as laid down be Chuck Moore and Jeff Fox, can
be found at [1].

A is a address register, for indirect memory access
T is top of Data stack, dpull and dpush
R is top of Return stack, rpull and rpush
I is a index register, for counted loop

| code | Memo | 
| --- | --- |
| @R+ |  dpush , T = [R], R++ |
| @-R |  dpush , R--, T = [R] |
| @R  |  dpush , T = R |
| !R+ |  [R] = T, R++, dpull |
| !-R |  R--, [R] = T, dpull |
| !R  |  [R] = T , dpull | 
| @A+ |  dpush , T = [A], A++ |
| @-A |  dpush , A--, T = [A] |
| @A  |  dpush , T = A |
| !A+ |  [A] = T, A++, dpull |
| !-A |  A--, [A] = T, dpull |
| !A  |  [A] = T , dpull | 
| I!  |  dpush, T = I |
| I@  |  I = T , dpull | 
| >R  | rpush, R = T, dpull |
| R>  | dpush, T = R, rpull | 

Some comments [^2] about ISA of F21:

## References
[1] Moore, Charles and Fox, Jeff. F21 Microprocessor Preliminary Specifications. 1995.
[2] Federico de Ceballos. A MACHINE FORTH SPECIFICATION BASED ON THE PSC1000 CAPABILITIES. 2000
