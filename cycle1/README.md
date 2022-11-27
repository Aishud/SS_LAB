# Output

#### Sequential

```

Enter total number of blocks in the disk:50

Enter starting block and length of file:13 6

File Allocated

Do you want to continue?(1.yes/0.No):1

Enter starting block and length of file:15 2

File Not Allocated

Do you want to continue?(1.yes/0.No):1

Enter starting block and length of file:0 3

File Allocated

Do you want to continue?(1.yes/0.No):1

Enter starting block and length of file:3 1

File Allocated

Do you want to continue?(1.yes/0.No):1

Enter starting block and length of file:3 2

File Not Allocated

Do you want to continue?(1.yes/0.No):0

```

#### Indexed

```

Enter total number of blocks in the disk:50

Enter index of file:5

Enter number of blocks for 5:3

Enter index of  each blocks for 5:0 1 2

File Allocated

5----->0

5----->1

5----->2

Do you want to continue?(1.yes/0.No):1

Enter index of file:45

Enter number of blocks for 45:5

Enter index of  each blocks for 45:34 12 10 4 6

File Allocated

45----->34

45----->12

45----->10

45----->4

45----->6

Do you want to continue?(1.yes/0.No):1

Enter index of file:4

4 is already allocated

Do you want to continue?(1.yes/0.No):1

Enter index of file:34

34 is already allocated

Do you want to continue?(1.yes/0.No):0

```

#### Linked

```

Enter total number of blocks in the disk:50

Enter number of blocks already allocated:5

Enter index of already allocated blocks:1 3 5 7 9

Enter starting and length of file:0 5

Allocated blocks:

-->0

1 is already allocated

-->2

3 is already allocated

-->4

5 is already allocated

-->6

7 is already allocated

-->8

Do you want to continue?(1.yes/0.No):1

Enter starting and length of file:9 2

Allocated blocks:

9 is already allocated

-->10

-->11

Do you want to continue?(1.yes/0.No):0

```
