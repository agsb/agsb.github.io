_this is still a stub_

# The Stacks

_Charles Moore says 22 levels is enough for Forth._

The R65F11, a 6502 clone with native Forth inside, uses 30 cells for return stack and 50 cells for parameter/data stack.

The Forth Standarts (1979, 1983, 1994?) recommends at least 24 cells for return stack and 32 cells for parameter/data stack.

But which the better, maybe not the best, mode of _stack implementation_ in a 8 bit CPU with 16 bit memory address range ?

## Back Stacks

The 6502 have two peculiar pages, the zero page and stack page, both unique and with 256 bytes. All sub-routines calls (JSR) and returns (RTS) uses the stack page for 16-bit pointers, also the indirect indexed and indexed indirect modes uses page zero. Those are unique and valuable resources.

An good revew of 6502 addressing modes at [emulators](http://www.emulator101.com/6502-addressing-modes.html).

In 6502 code, to pass a byte between memory, always need use LDA and STA, there are exotic alternatives, but all use the accumulator.

Almost 6502 typical stack implementations does as standart: 
      
      1. Allow till 128 words deep stack; 
      2. Any operation with values at stack must do pushs and pulls, using the accumulator. 
      3. Any multitask or multiuser system must split or copy the stack.
      4. Stack of 128 words are round-robin, else could need check limits.
      
Using page zero or stack page, needs reserve space for the system bios and application, and Forth uses two stacks.

## Some ways to stacks

These are most commom implementations, for **push** and **pull**, using index, pointer, value (LSB, MSB) in zero page. 

### hardware stack SP

Uses the hardware stack, but at diferent offset. Uses ~66 cycles and 40 bytes of code. _Could not use JSR/RTS inside_.

      .macro push_sp index, value 
            LDA index;
            TSX; 
            STX index; 
            TAX; 
            TXS;      
            LDA value + 0; 
            PHA; 
            LDA value + 1; 
            PHA;          
            LDA index; 
            TSX; 
            STX index; 
            TAX; 
            TXS;      
      .endmacro ; 
      
      .macro pull_sp index, value
            LDA index;
            TSX;
            STX index;
            TAX;
            TXS;     
            PLA;
            STA value + 1;
            PLA;
            STA value + 0;           
            LDA index;
            TSX;
            STX index;
            TAX;
            TXS;     
      .endmacro ;  

### page zero indexed by X
      
Uses the page zero as stack. Uses ~48 cycles and 28 bytes of code;

      .macro push_zx index, pointer, value 
            LDX index; 
            DEX; 
            LDA value + 1; 
            STA pointer, X;
            DEX; 
            LDA value + 0;
            STA pointer, X;
            STX index;
      .endmacro     
      
      .macro pull_zx index, pointer, value 
            LDX index;
            LDA pointer, X;
            STA value + 1;
            INX;
            LDA pointer, X;
            STA value + 0;
            INX;
            STX index;
      .endmacro

### page zero indirect indexed by Y

Uses the a pointer in page zero to anywhere in memory. Stacks with up to 128 cells. 
Uses ~52 cycles and 28 bytes of code. 
_Multiuser and Multitask systems can change the pointers anytime._ 
_All operations needs pull and push_

      .macro push_iy index, pointer, value 
            LDY index;
            DEY;
            LDA value + 1;
            STA (pointer), Y;
            DEY;
            LDA value + 0;
            STA (pointer), Y;
            STY index;
      .endmacro      
      
      .macro pull_iy index, pointer, value 
            LDY index;
            LDA (pointer), Y;
            STA value + 1;
            INY;
            LDA (pointer), Y;
            STA value + 0;
            INY;
            STY index;
      .endmacro
      
### page zero indirect indexed by Y, splited

Uses the a pointer in page zero to anywhere in memory. Stacks with up to 256 cells. 
Uses ~52 cycles and 28 bytes of code. 
_Multiuser and Multitask systems can change the pointers anytime._ 
_All operations needs pull and push_

      .macro push_iy index, pointer_lo, pointer_hi, value 
            LDY index;
            DEY index;
            LDA value + 0;
            STA (pointer_lo), Y;
            LDA value + 1;
            STA (pointer_hi), Y;
      .endmacro      
      
      .macro pull_iy index, pointer_lo, pointer_hi, value 
            LDY index;
            INC index;
            LDA (pointer_lo), Y;
            STA value + 0;
            LDA (pointer_hi), Y;
            STA value + 1;
      .endmacro

### absolute address indexed by X or Y, not splited
      
Uses one absolute pointer _pointer_ anywhere in memory. Stacks with up to 128 cells. 
Uses ~58 cycles and 28 bytes of code. The pointer is fixed.
_Multiple stacks can be used as changing index, but all must split whitin a range of 128 cells_  
_Any operation with values at stack could be at direct offset, no need use pulls and pushs_

      .macro push_ax index, pointer, value 
            LDX index
            DEC index
            DEC index
            LDA value + 1;
            STA pointer - 1, X;
            LDA value + 0;
            STA pointer - 2, X;
      .endmacro    
      
      .macro pull_ax index, value 
            LDX index;
            INC index
            INC index
            LDA pointer + 0, X;
            STA value + 0;
            LDA pointer + 1, X;
            STA value + 1;;
      .endmacro

      Eg,   Using stack size of 24 cells, does 4 stacks of 24 cells and one of 32 cells, per pointer. 
            Two pointers, for data and return, could allow 5 independent context tasks;
      
### split absolute address indexed by X or Y
      
Uses two absolute pointers _pointer_lo_ and _pointer_hi_ anywhere in memory. 
Stacks with up to 256 cells, splited in two parts. 
Uses ~58 cycles, 28 bytes of code.  
_Any operations with values at stack could be at direct offset, no need pulls and pushs_

      ; Usually the order is LSB,MSB,LSB,MSB,LSB,MSB,... changed to LSB,LSB,LSB,...,MSB,MSB,MSB,...

      .macro push_axs index, pointer_lo, pointer_hi, value 
            LDX index;
            DEC index;
            LDA value + 0;
            STA pointer_lo - 1, X;
            LDA value + 1;
            STA pointer_hi - 1, X;
      .endmacro    
      
      .macro pull_axs index, pointer_lo, pointer_hi, value 
            LDX index;
            INC index;
            LDA pointer_lo + 0, X;
            STA value + 0;
            LDA pointer_hi + 0, X;
            STA value + 1;
      .endmacro


      Eg,   Using stack size of 24 cells, does 9 stacks of 24 cells and one of 40 cells, per pointer. 
            Two pointers, for data and return, could allow 10 independent context tasks;
      
### direct address with indirect access by Y

Uses an absolute pointer _pointer_ to memory. _Stacks with up to any size_. Both uses ~44 cc, 84 bytes of code. 

      .macro push_di pointer, value 
            LDY #0; 
            LDA value + 1;
            STA (pointer), Y; 
            INC pointer + 0;
            BNE :+ ;
            INC pointer + 1; 
            : ;
            LDA value + 0;
            STA (pointer), Y; 
            INC pointer + 0;
            BNE :+ ;
            INC pointer + 1; 
            : ;
       .endmacro    
      
      .macro pull_di pointer, value 
            LDY #0; 
            LDA pointer + 0;
            BNE :+ ;
            DEC pointer + 1;
            : ;
            DEC pointer + 0; 
            LDA (pointer), Y;
            STA value + 1; 
            LDA pointer + 0;
            BNE :+ ;          
            DEC pointer + 1;
            : ;
            DEC pointer + 0; 
            LDA (pointer), Y;
            STA \value + 0;
      .endmacro


### Comparasion

| type | code size | cycles | cells  | notes |
| -- | -- | -- | -- | -- | 
| hardware stack SP | 40 | 66 | 128 | must split*, must use push and pull | 
| page zero indexed by X | 28 | 48 | 128 | must split*, must use push and pull |
| indirect indexed by Y | 28 | 50 | 128 | must split*, must use push and pull |
| absolute address indexed | 32 | 52 | 128 | any operation at direct offset, no need pull and push |
| split absolute addres indexed | 30 | 48 | 256 | any operation at direct offset, no need pull and push |
| direct address with indirect access | 58 | 96 | any size | must use push and pull | 

\* a least 22 cells of each stack and rest for inline code

### What Do 

Consider for no multitask, no multiuser, 256 deep stacks, reduce overhead, direct memoy access and good timing, then

_Using absolute address indexed splited access for stacks_ 

It provides the most fast overall implementation because does not need use push and pull. 

All operations DROP, DUP, OVER, SWAP, ROT, AND, OR, XOR, NEG, INV, ADD, SUB, INC, DEC, EQ, LT, GT, 2/, 2*, 0=, 0<, 0>, are
done using offsets (table 2).

( w1 w2 w3 -- wd wc wb w1 w2 w3)

  | _table 2_ | memory layout|
  | --- | --- | 
  | low | address |
  | -2  | *C* |
  | -1  | *B* |
  |  0  | **TOS** 1st|
  | +1  | *NOS* 2nd |
  | +2  | *ROS* 3td |
  | high | address |

      - Offset from pointer_lo and pointer_hi, tip: pointer_lo = $XX00; pointer_hi = pointer_lo + $FF
      - TOS, top in stack; NOS, next in stack; 
      
### Best

**For common "alone" applications _zero page indexed by X_ with 24 words per stack and 32 words shared could be faster.** 

Note that all modes needs read and write stack indexes from/into somewhere, then _lda, sta, inc, dec_ are always used.

One for application generic code use ( < 84 words ); One for data stack ( > 22 words ); One for return stack ( > 22 words ). 

For multitask or multiuser, could be 2 tasks with 2 stacks of 24 words and a generic stack of 32.


