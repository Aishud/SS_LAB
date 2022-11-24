#### output

```
Enter total memory size:100

Enter page size:10

Enter total number of processes:3

Enter number of pages needed for process 0:4

Enter frame number for P0[0]:1

Enter frame number for P0[1]:2

Enter frame number for P0[2]:3

Enter frame number for P0[3]:4

Enter number of pages needed for process 1:5

Enter frame number for P1[0]:0

Enter frame number for P1[1]:1

Frames is already allocated

Available frames :5     6       7       8       9

Enter frame number for P1[1]:5

Enter frame number for P1[2]:6

Enter frame number for P1[3]:7

Enter frame number for P1[4]:8

Enter number of pages needed for process 2:6

Enter frame number for P2[0]:9

Enter frame number for P2[1]:0

Frames is already allocated

Available frames :

Enter the process to be removed from frame:1

Available frames :0     5       6       7       8

Enter frame number for P2[1]:0

Enter frame number for P2[2]:5

Enter frame number for P2[3]:6

Enter frame number for P2[4]:7

Enter frame number for P2[5]:8

        PAGE TABLE

Process no.     Pg.no   Frame no.

0               0               1

0               1               2

0               2               3

0               3               4

1               0               -1

1               1               -1

1               2               -1

1               3               -1

1               4               -1

2               0               9

2               1               0

2               2               5

2               3               6

2               4               7

2               5               8

        FRAME TABLE

Frame no.       Pg.no   Process no.

0               1               2

1               0               0

2               1               0

3               2               0

4               3               0

5               2               2

6               3               2

7               4               2

8               5               2

9               0               2

```
