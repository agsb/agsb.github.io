**just randon notes while learn about it**

# Notes about Mapple trees

Using 8 bytes (64 bits) values and page units of 256 bytes, a device could have 0 to UMAX_LONG pages, a storage sector of 4096 bytes holds 16 pages. 
A page holds 32 slots of 8 bytes, reserves one slot for self holding metadata. 
The metadata uses 7 bytes for sequential identification and 1 byte for represent type, lock, state;

A slot could be a metadata, a hash, an offset, an block.
A page could be a leaf, a 

### Leafs

  slot 0 -- identification
  slots  (
