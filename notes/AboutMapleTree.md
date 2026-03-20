**just randon notes while learn about it**

references: 
      https://github.com/torvalds/linux/blob/master/lib/maple_tree.c#L10
      https://github.com/oracle/linux-uek/tree/howlett/maple/20220716

# Notes about Mapple trees

## pivot and entry

Implementation types are dense, leaf, range, arange.

dense  is: parent, slot0 ... slot30
range  is: parent, pivot0 ... pivot14, slot0 ... slot15
sparse is: parent, pivot0 ... pivot14, slot0 ... slot15
alloc is:  parent, pivot0 ... pivot9, slot0 ... slot9, gap0 ... gap9, unused

 * Slot size and alignment
 *  0b??1 : Root
 *  0b?00 : 16 bit values, type in 0-1, slot in 2-7
 *  0b010 : 32 bit values, type in 0-2, slot in 3-7
 *  0b110 : 64 bit values, type in 0-2, slot in 3-7

Note the use of _parent_ for reference, 7 bytes number plus a byte with metadata

## metadata

/* Bit 1 indicates the root is a node */
#define MAPLE_ROOT_NODE			0x02

/* maple_type stored bit 3-6 */
#define MAPLE_ENODE_TYPE_SHIFT		0x03

/* Bit 2 means a NULL somewhere below */
#define MAPLE_ENODE_NULL		0x04

## form 

Using 8 bytes (64 bits) values and page units of 256 bytes, a device could have 0 to ULONG_MAX pages with a storage sector of 4096 bytes holds 16 pages. 

A page holds 32 slots of 8 bytes, A slot could be a metadata, a pivot, an entry, an offset, a content.

A page could reserve one slot for self holding metadata. The metadata uses high 7 bytes for sequential number and lower 1 byte for represent type, lock, state. 

A pivot is for comparation, could be a hash or a value. A reference is a sequential number with lower byte with zeros.

A page could be a leaf, a non-leaf (directory) or a content. 

### leafs and ranges

  parent,  ( leaf, pivot ) * 15, reference greater

### dense

  parent, (reference ) * 31

### content

  256 bytes

## questions

  adapted for 32 bit arch ? 

### 
  
