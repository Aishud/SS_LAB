#include<stdio.h>      
int main()
{
 	int i,h,n,sum=0,d,t,j;
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
	printf("Enter total disk size:");
	scanf("%d",&t);
	printf("Enter head movement direction(low:0,high:1):");
	scanf("%d",&d);
	for(i=0;i<n;i++)
     {
        for(j=0;j<n-i-1;j++)
        {
            if(r[j]>r[j+1])
            {
                int temp;
                temp=r[j];
                r[j]=r[j+1];
                r[j+1]=temp;
            }

        }
     }
	printf("Seek Sequence is:\n");
   	if(d==0)
	{
		for(i=0;i<n;i++) 
		{
			if(h<=r[i])
			{
				j=i;
				break;
			}
		}  
		for(i=j-1;i>=0;i=i-1)
		{
			sum=sum+(h-r[i]);
			printf("%d\t",r[i]);
			h=r[i];
			if(i==0)
			{
				sum=sum+h;
				h=0;
				printf("%d\t",h);	
			}
		}
		for(i=j;i<n;i++)
		{
			sum=sum+(r[i]-h);
			printf("%d\t",r[i]);
			h=r[i];
		}
	}
	else
	{
		for(i=0;i<n;i++) 
		{
			if(h<=r[i])
			{
				j=i;
				break;
			}
		}  
		for(i=j;i<n;i++)
		{
			sum=sum+(r[i]-h);
			printf("%d\t",r[i]);
			h=r[i];
			if(i==(n-1))
			{
				sum=sum+((t-1)-h);
				h=t-1;
				printf("%d\t",h);		
			}
		}
		for(i=j-1;i>=0;i=i-1)
		{
			sum=sum+(h-r[i]);
			printf("%d\t",r[i]);
			h=r[i];
		}
	}
	printf("\nTotal head movement:%d",sum);
	return 0;
}
