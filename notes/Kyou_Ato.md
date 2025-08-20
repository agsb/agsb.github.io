# Kyou Ato

__After Today__

## Card

The tasks are keeped in a list of cards with

    "List" : {
      "Order" : "  ",
      "Uuid" : " ",
      }
      
    "Card" : {
      "Uuid" : " ",
      "State" : " ",
      "Time0" : " ",
      "Time1" : " ",
      "Time2" : " ",
      "Title" : " ".
      "Notes" : " "
      }

In format of CSV, one entry by line, List (order, uuid), Task (uuid, time0, time1, time2, title, notes)

  Order is the ordinary sequence ;
  
  Uuid is the classic UUID ;
  
  State is one of (VOID, TODO, WORK, DONE, HOLD) ;
  
  Time0, Time1, Time2 are time in DAY/MONTH/YEAR, Time0 is when task goes into list, Time1 when work starts, Time2 when work is done ;

  Title is a text of less than 120 characters ;

  Notes is a small text with a URI to the notebook ;


  
##  
  
