# Snippets

## Forth

@ https://www.ultratechnology.com/enthflux.htm

"It is the multiply step instruction that Chuck wanted for multiplies in OKAD."
: +* ( n1 n2 -- n1 n2 | n1 n1+n2 ) DUP 1 AND IF OVER + THEN ;

"Chuck executes or compiles each word indiviually rather than line by line.
In fact Chuck doesn't really have lines."

