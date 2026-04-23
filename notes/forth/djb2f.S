
/*

 Copyright (c) 2025, Alvaro Gomes Sobral Barcellos
 All rights reserved.

 see the disclaimer file in this repository.

*/

#----------------------------------------------------------------------
# djb2 hash function
# classic djb2 hash algorithm, with XOR, adapted from cdb_hash
# idx pointer to str
# trd hold the end of word character ( \0 or spc)
# uses fst, snd
# hsh returns the hash 
# idx returns next space

.equ DJB2, 5381

djb2:
        # easy 5381
   
        lui hsh, %hi(DJB2)

        addi hsh, hsh, %lo(DJB2)

        # addi trd, zero, BL

100:
        lb fst, 0 (idx)
        
        # beq fst, zero, 100f
        
        beq fst, trd, 100f

        add snd, zero, hsh

        slli hsh, hsh, 5
        
        add hsh, hsh, snd
        
        xor hsh, hsh, fst
        
        addi idx, idx, ONE
        
        j 100b

100:    

        ret
        
