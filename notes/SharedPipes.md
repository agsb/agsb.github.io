## Shared Pipes

_this is still a stub_

An alternative for MQTT ?

Traditional pipes are created ...

One pipe could serve to one process save information and one process load information, and 1:1 relation, but if could do as 1:N or N:1 or N:N ?

Consider a card with 4kb, a ticket with consistence metadata, a index with number and size;

Consider each pipe as a dual buffer, one locked and one accessed.

The owner writes on locked buffer and when finish, changes the switch and invert the access. 

A pipe shows the block number and size, and a ticket with a uuid, a time stamp and a hash of the information. 

Each card have 4kb or less size and the number is a 32-bit unsigned and round-up;

The information does not vanish after one reads, only when the switch changes.

When the owner needs preserve the information, he must subscribe and copy the block and ticket.

## 1:1

    One producer and only consumer

## 1:N

    One producer and many consumers.


## Notes

- A publisher registers a channel, with some stats as: name, description, periodicity, last, next, nsubs.
- A subscriber register to a channel, to view messages from 
- A server keeps only the last message for each channel
- A server must authenticate the publisher and the subscriber
- A channel could be public or private or secret
- A autentication by TOTP and SSL
  
## Using directories

- /publishers/channel/{stats,type,description}/{last,shar256,uuid}
- /subscribers/subscriber/{channels}/



  
