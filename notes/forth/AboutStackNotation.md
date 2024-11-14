#  ABOUT STACK NOTATION
 
  __The top of the stack is to the right.__, 
        Forth 2012, Standart.
 
  __OVER  ( n1 n2 — n1 n2 n1 )  Copies second item to top__, 
        "Starting Forth", Leo Brodie
 
  I have a cognitive problem about stack notation.
 
  In Forth standards 79, 83, 94, 20xx, the cells in ( after -- before ), 
  should be arranged on the left as bottom and on the right as top.
  
  For didactic purposes, it represents the order of "pushed into the stack", 
  not the order of "counting from top of stack".
 
  For example, when representing ( w1 w2 w3 -- ), the order 
  is be w3 at the top and w1 at the bottom.
 
  The cells indices,  
          
  __for ( w1 w2 w3 -- ), are of w1 is 3 and of w2 is 2,__
        
  but
  
  __for ( w1 w2    -- ), are of w1 is 2 and of w2 is 1.__
 
  This is very confusing to me, indices vary with depth of stack.
 
  I prefer to use left always at top, and the following indicating 
  the position relative to the top of the stack.
 
  So w1 will always be 1, w2 will always be 2, and so on,
  the indices are always in the same order.
 
  To differentiate, I'm using double parentheses as comments of stack 
  elements to indicate the top of stack is at left, thus, 
  it is ever the last element pushed into stack.

