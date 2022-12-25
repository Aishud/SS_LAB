#### OUTPUT
```

The contents of Input file:

**    START  2000
**    LDA    FIVE
**    STA    ALPHA
**    LDCH   CHARZ
**    STCH   C1
ALPHA RESW   2
FIVE  WORD   5
CHARZ BYTE   C'Z'
C1    RESB   1
**    END    **


Length of the input program is23

The contents of Symbol Table:

ALPHA	2012
FIVE	2018
CHARZ	2021
C1	2022

Object Program has been generated.

Object Program:

H^**002000^002023
T^002000^22^332018^442012^532021^572022^000005^5a
E^002000
```
