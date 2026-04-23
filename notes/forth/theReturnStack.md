# the return stack

    cell = 4 bytes 
    RP : hold the contents of return stack
    = : repeats the last value at left

    X : does not matter
    A : an address, last return before execute the word
    W, W1 : a word 
    
    S0 : relative data stack position, at entry
    R0 : relative return stack position, at entry

note: both sp@ and rp@ must be offset by one cell to get the correct top values.

    
## >R

 |  :  |  >R  |  rp@  |  @  |  swap  |  rp@  |  !  |  rp@  |  cell  |  -  |  rp  |  !  |  rp@  |  !  |  ;  | 
 |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  | 
 |  S-2  |   |   |   |   |  R0  |   |   |  cell  |   |  RP  |   |   |   |   |  
 |  S-1  |   |  R0  |  A  |  W  |  W  |   |  R0  |  R0  |  R-1 |  R-1  |   |  R-1  |   |   | 
 |  S+0  |  W  |  W  |  W  |  A  |  A  |  A  |  A  |  A  |  A  |  A  |  A  |  A  |   |   | 
 |  S+1  |  = | = | = | = | = | = | = | = | = | = | = | = | = | = |  
 |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   | 
 |  R-1  | = | = | = | = | = | = | = | = | = | = |  =  |  = |  A  |  A  | 
 |  R+0  |  A  |  A  |  A  |  A  |  A  |  W  |  W  |  W  |  W  |  W  |  W  |  W  |  W  |  W  | 

## R>

 |  :  |  R>  |  rp@  |  @  |  rp@  |  cell  |  +  |  rp  |  !  |  rp@  |  @  |  swap  |  rp@  |  !  |  ;  | 
 |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  |  --  | 
 |  S-3  |   |   |   |   |  cell  |   |  RP  |   |   |   |   |  R1  |   |   | 
 |  S-2  |   |   |   |  R0  |  R0  |  R1  |  R1  |   |  R1  |  W  |  A  |  A  |   |   | 
 |  S-1  |   |  R0  |  A  |  A  |  A  |  A  |  A  |  A  |  A  |  A  |  W  |  W  |  W  |  W  | 
 |  S+0  |  =  |  =  |  =  |  =  |  =  |  =  |  =  |  =  |  =  |  =  |  =  |  =  |  =  |  =  | 
 |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   | 
 |  R0  |  A  |  A  |  A  |  A  |  A  |  A  |  A  | = | = | = | = | = | = | = | 
 |  R1  |  W  |  W  |  W  |  W  |  W  |  W  |  W  |  W  |  W  |  W  |  W  |  W  |  A  |  A  | 

