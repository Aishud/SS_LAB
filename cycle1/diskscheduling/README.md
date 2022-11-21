# Output

#### FCFS
```
Enter no.of request:8
Enter request sequence:
95 180 34 119 11 123 62 64
Enter initial head position:50
Seek Sequence is:
95	180	34	119	11	123	62	64	
Total head movement:644
```
#### SCAN
```
Enter no.of request:8
Enter request sequence:
176 79 34 60 92 11 41 114
Enter initial head position:50
Enter total disk size:200
Enter head movement direction(low:0,high:1):0
Seek Sequence is:
41	34	11	0	60	79	92	114	176	
Total head movement:226
```
#### C-SCAN
```
Enter no.of request:8
Enter request sequence:
176 79 34 60 92 11 41 114
Enter initial head position:50
Enter total disk size:200
Enter head movement direction(low:0,high:1):1
Seek Sequemce is:
60	79	92	114	176	199	0	11	34	41	
Total head movement:389
```
