**just randon notes while learn about it**

reference: https://github.com/torvalds/linux/blob/master/lib/maple_tree.c#L10

# Notes about Mapple trees

## pivot and entry

## form 

Using 8 bytes (64 bits) values and page units of 256 bytes, a device could have 0 to ULONG_MAX pages with a storage sector of 4096 bytes holds 16 pages. 

A page holds 32 slots of 8 bytes, A slot could be a metadata, a pivot, an entry, an offset, an content.

A page could reserve one slot for self holding metadata. The metadata uses high 7 bytes for sequential number and lower 1 byte for represent type, lock, state. 

A pivot is for comparation, could be a hash or a value. A reference is a sequential number with lower byte with zeros.

A page could be a leaf, a non-leaf (directory) or a content. Implementation types are dense, leaf, range, arange.

### leafs

  self,  ( reference lower, pivot ) * 15, reference greater

### directory

  self, (reference ) * 30, reference next

### content

  self, 248 bytes

### 
  
