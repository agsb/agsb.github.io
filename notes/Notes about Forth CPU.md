# Notes

Consider the CPUs F18 F21 F22, from Chuck Moore and Jeff

## Registers

  I  instruction pointer
  S  index on MAXS data stack
  R  index on MAXR return stack
  T  first item on data stack
  N  next item on data stack
  A  memory pointer
  B  memory pointer

| opcode | action | explain |
| -- | -- | -- |
| 0 | Nop | |
| 1 | R++ | |
| 2 | R-- | |
| 3 | S++ | |
| 4 | S-- | |
|   | A++ | |
|   | A-- | |
| 5 | [R] = T | |
| 6 | T = [R] | |
| 7 | T = N | |
| 8 | N = T | |
| 9 | N = [S] | |
| 10 | [S] = N | | 
| 11 | A = T | |
| 12 | T = A | |
| 13 | [A] = T | |
| 14 | T = [A] | |
| 15 | N = N and T | |
| 16 | N = N or  T | |
| 17 | N = N xor T | |
| 18 | T = not T | |
| 19 | T = neg T | |
| 20 | T = T << N | |
| 21 | T = T >> N | |
| 22 | T = N + T | |
| 23 | T = N - T | |
| 24 | T N = N * T | | 
| 25 | T N = N / T | | 
| 26 | T == 0 | |
|    | T < 0  | |
|    | T <= 0 | | 
|    |  |  |
