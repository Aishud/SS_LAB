#include<stdio.h>

int a[50][3];

void stats(int fn)

{

	printf("Available frames :");	for(int k=0;k<fn;k++)

	{

		if(a[k][1]==0)

		{

			printf("%d\t",k);

		}

	}

}

int main()

{

	int m,p,i,fn,np,pid,j,c=0,rp;

	int npg[50];

	printf("Enter total memory size:");

	scanf("%d",&m);

	printf("Enter page size:");

	scanf("%d",&p);

	fn=m/p;

	a[fn][3];

	for(i=0;i<fn;i++)

	{

		a[i][0]=-1;//pg no

		a[i][1]=0;//status

		a[i][2]=-1;//pid

	}

	printf("Enter total number of processes:");

	scanf("%d",&np);

	for(int x=0;x<np;x++)

	{

		printf("Enter number of pages needed for process %d:",x);

		scanf("%d",&npg[x]);

		if(npg[x]>fn)

		{

			printf("Process cannot allocate to frame\n");

		}

		else

		{

			for(i=0;i<npg[x];i++)

			{

				printf("Enter frame number for P%d[%d]:",x,i);

				scanf("%d",&j);

				if(a[j][1]==0)

				{

					a[j][0]=i;

					a[j][1]=1;

					a[j][2]=x;

					c++;

				}

				else

				{

					printf("\nFrames is already allocated\n");

					stats(fn);

					if (c==fn)

					{

						printf("\nEnter the process to be removed from frame:");

						scanf("%d",&rp);

						for(int k=0;k<fn;k++)

						{

							if(a[k][2]==rp)

							{

								a[k][0]=-1;

								a[k][1]=0;

								a[k][2]=-1;

								c--;

							}

						}

						stats(fn);			

					}

					printf("\nEnter frame number for P%d[%d]:",x,i);

					scanf("%d",&j);

					if(a[j][1]==0)

					{

						a[j][0]=i;

						a[j][1]=1;

						a[j][2]=x;

						c++;

					}

				}

			}

		}

	}

	printf("\n\tPAGE TABLE\n");

	printf("Process no.\tPg.no\tFrame no.\n");

	for(i=0;i<np;i++)

	{

		for(j=0;j<npg[i];j++)

		{

			for(int k=0;k<fn;k++)

			{

				if(a[k][2]==i)

				{

					if(a[k][0]==j && a[k][1]==1)

					{

						printf("%d\t\t%d\t\t%d\n",i,j,k);

						break;

					}

				}

				else

				{

					if(k+1==fn)

					{

						printf("%d\t\t%d\t\t-1\n",i,j);

					}

				}

			}

		}

	}

	printf("\n\tFRAME TABLE\n");

	printf("Frame no.\tPg.no\tProcess no.\n");

	for(int k=0;k<fn;k++)

	{

		printf("%d\t\t%d\t\t%d\n",k,a[k][0],a[k][2]);

	}

	return 0;

}
