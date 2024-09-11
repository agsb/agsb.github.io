**(this file is stub)**

__"Get out of the rabbit hole Alice"__

# The TIB and The Stream

The "terminal input buffer" is a reminiscence of old times where 80 columns cards was the interface between of humans and computers. It eats line by line as each was cards separated by "carriage return and new line".

Another metaphor comes in mind to replace TIB, the stream. A continous source of characters.

## how use ?

The stream buffer is a system resource from where the user consumes one byte a time and keeps wherever wants, in a user space.

When needs a word, select a space as separator and expect some sequence of characters between sequences of separators.

When needs a string, select double quotes. When a comment, select a parentesis pairs.
