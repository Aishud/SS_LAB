#include<stdio.h> 
#include<stdlib.h> 
int main()
{
 	int i,h,n,m=0;
	printf("Enter no.of request:");
	scanf("%d",&n);
	int r[n];
	printf("Enter request sequence:\n");
	for(i=0;i<n;i++)
	{
		scanf("%d",&r[i]);
	}   
	printf("Enter initial head position:");
	scanf("%d",&h);
	printf("Seek Sequence is:\n");
	for(i=0;i<n;i++) 
	{
		m+=abs(h-r[i]);
		printf("%d\t",r[i]);
		h=r[i];
	}  
	printf("\nTotal head movement:%d\n",m);
	return 0;
}
