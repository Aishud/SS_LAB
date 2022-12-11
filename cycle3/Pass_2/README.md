##### OUTPUT
```

Intermediate file is converted into object code
The contents of Intermediate file:

        **      START   2000
2000    **      LDA     FIVE
2003    **      STA     ALPHA
2006    **      LDCH    CHARZ
2009    **      STCH    C1
2012    ALPHA   RESW    2
2018    FIVE    WORD    5
2021    CHARZ   BYTE    C'Z'
2022    C1      RESB    1
2023    **      END     **


The contents of Symbol Table:

ALPHA   2012
FIVE    2018
CHARZ   2021
C1      2022

The contents of Output File:

        **      START   2000
2000    **      LDA     FIVE    332018
2003    **      STA     ALPHA   442012
2006    **      LDCH    CHARZ   532021
2009    **      STCH    C1      572022
2012    ALPHA   RESW    2
2018    FIVE    WORD    5       000005
2021    CHARZ   BYTE    C'Z'    5a
2022    C1      RESB    1
2023    **      END     **


The contents of Object code File:

H^**002000^002023
T^002000^22^332018^442012^532021^572022^000005^5a
E^002000
```
