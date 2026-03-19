( SYMBOLIC LOGIC CALCULATOR IN FORTH -- ASSAD EBRAHIM -- 2020-04-02---Thu---06:45 )
( This program is available from:     http://mathscitech.org/articles/prop-logic#forth-logic-calculator   )
( This program runs in GForth:        https://www.gnu.org/software/gforth/  )


(   logical operators   -  Forth has built-in AND, OR, XOR   )
:  ~    ( p -- ~p ) T xor ;           \ NEGATION takes bitfield size from T
:  ^    ( p q -- p^q ) and ; 
:  v    ( p q -- pvq ) or ; 
:  ->   ( p q -- p->q ) swap ~ v ;    \ IF/THEN
:  <->  ( p q -- p<->q ) xor ~ ;      \ IFF
(    auxilliary definitions )
: <-    ( p q -- q p -> )  swap -> ;  \ WHENEVER
: D     ( p q -- p NAND q ) ^ ~ ;     \ NAND


(   viewing bitfield of a number  - determines number of bits from T )
: .bit  ( n -- ) 0> if 1 else 0 then . ;
: init-mask  T 2 / ~  ;  \ initial mask is $8=1000b, $80=1000000b, or $8000 depending on T
: bits  (  bitfield  --  )  
    init-mask begin      \  loop through bits, pick them off, and print
        2dup and .bit    
        1 rshift dup 0= until 
    2drop ." b" ;
: .. ( bf -- bf ) dup bits 2 spaces ;
: eval ( r1 r2 -- ) 2dup = if ." Equivalent.  " bits drop else ." Different!  " swap bits bits then ;


\  INSTRUCTIONS

\ include logic2.fs  logic3.fs  or logic4.fs, which include this file
