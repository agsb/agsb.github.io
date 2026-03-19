
# Not a Number

__There is more than only numbers__

the IEEE-754 refers a special value to be a Not-A-Number 
(NaN) for result of invalid or unrepresentable operation. 

In float point the expoent with all bits set is the indicator of NaN, 
and the significant could be zero or indicate the error number.

In integer representations, the signal of signed integer numbers 
is the high bit of the MSB, eg for one byte, 
    00000001 to 01111111 ( 1 to 127 ) is positive, 
    11111111 to 10000001 ( -1 to -127 ) is negative, 
    00000000 is zero and 10000000 is -128. 

When consider -128 is not a number ( NaN ), could used to indicate 
errors as conversion, overflow, underflow, zero division.

Also it's define a perfect simetric balanced values (-127..0..+127)

Sure, it is extended to any size bytes cells. 


