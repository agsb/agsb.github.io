_this file is still a stub_

# Builds Create Does

One of most powerfull tools of Forth is the 
    \<BUILD CREATE :NONAME DOES\>
    process to define new words and families of words.

From a old long thread in comp.language.forth [^1]: 

" DOES> changes the code field, 
    so it does not matter whether CONSTANT
    or VARIABLE is used for defining <BUILDS; "

The Forth standart defines [CREATE](https://forth-standard.org/standard/core/CREATE) and [DOES](https://forth-standard.org/standard/core/DOES). In short, CREATE makes a dictionary header and leaves the address of next cell in dictionary and DOES> appends at address a link to the sequence words following DOES>. By the way, DOES> must know exactly what CREATE makes.

## Context

Classic Forths with STC DTC ITC, have this header structure:
    
    link field, link to previous word in dictionary linked list;
    
    name field, with flags and size at first byte;
    
    code field, what is executed -- the Forth interpreter 
            jump to this address, usually with DOCOL or 
            the parameter field address;
    
    parameter field, with native code or a list of references;

On Fig-Forth:

: CONSTANT CREATE SMUDGE , ;CODE .. some assembly code
    
: VARIABLE CONSTANT ;CODE ... some assembly code.

The COLON (:) word does a dictionary word header with next name,
        toggle smudge the entry, copy LATEST to link field, copy HERE 
        to LATEST and change STATE to compiling (1).
    
The SEMIS (;) word places a EXIT at end of word definition, 
        toggle smudge the entry and change the STATE 
        to interpreting (0). 

The ;CODE makes the Forth (interpreter) do a literal jump to 
        native code following it. 

At CONSTANT follows DOCON, at VARIABLE follows DOVAR, 
        and at DOES> follows DODOES, all in native code.

What CREATE and :NONAME really does ?
    
The older <BUILDS just makes a header and leaves the code field 
        address at stack;
    
DOES> changes the code field of the latest word defined to a code
        field and the defined parameter list the follows DOES> 
        
CREATE does a header and a well known list (xt), 
        leaves the code address at stack.

:NONAME does a list (xt) with no header, leaves the start address 
        at stack.
    
DOCOL (aka nest) does a push into return stack of next cell then 
        jumps to actual cell. 
    
And EXIT (aka unnest) does a pull from return stack and jumps to 
    that address, when is direct thread, jumps to that address, or 
    when is indirect thread, jumps to the contents of that addres,

## Non Classic

But MITC, wherever using name or hash, does not have code field.
    
What defines how to process is the content address at the cells, to 
    determine if is bellow a limit, is a primitive else is a compiled 
    word.

In MilliForth, ': is called colon '; is called semis ';S is called exit

Milliforth also does not use any flag other than IMMEDIATE, 
    no SMUDGE, no COMPILE-ONLY, none. 

 Also colon does not update latest, semis does. Then if something 
    goes wrong while compiling the new word, does not broke 
    the dictionary access and when complete the compiling, the 
    new word is pointed by latest.

 Using hash version :

 works:

    __STUB__

     : create 
        here @ : [ last !
        ['] lit ,
        here @ cell + cell + ,
        ['] exit ,
        0 state ! ;
        
     : cells lit [ 4 , ] ;

     : variable create cells allot ;

try:

     : create 
            here @ 
            : [                 / create a header
            latest !            / updates latest and leave 
            here @              / pass the xt to data stack
            ['] exit dup , ,    / place two 'exit, first could be used by does>
            ;

     : does>
            drop
            r> dup >r   / get next cell after does>
            latest @ cell cell + + ! / get latest, pass link and hash
            ;

But ?

     : variable create 0 , does> , ;
     
     : constant create , does> @ ;
   
## References

[1] https://comp.lang.forth.narkive.com/Ie9xB3gq/quick-review-of-builds-and-create-history


