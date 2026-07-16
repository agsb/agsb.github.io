# Many Pipes

An alternative for MQTT ?

## Notes

- A publisher registers a channel, with some stats as: name, description, periodicity, last, next, nsubs.
- A subscriber register to a channel, to view messages from 
- A server keeps only the last message for each channel
- A server must authenticate the publisher and the subscriber
- A channel could be public or private or secret
- A autentication by TOTP and SSL
  
## Using directories

./publishers/channel/{stats,type,description}/{last,shar256,uuid}
./subscribers/subscriber/{channels}/



  
