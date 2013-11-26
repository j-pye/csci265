/********** SSet module---implementation **********/
#include<stdio.h>
#include "IntSet.h"
#include "Error.h"

/***** local constants *****/

#define NOTFOUND -1

/***** local types *****/

/***** local variables *****/

static int setArray[SSMAXSIZ]; 
static int scnt; /*set size*/

/***** local functions *****/

/*
** Assumptions:
**      none
** Behaviour:
**      if x is in the set then
**              return the its index position in setArray
**      else
**              return NOTFOUND
*/
static int FindPos(int x)
{
	int i;

	for (i = 0; i < scnt; i++)
		if (setArray[i] == x)
			return(i);
	return(NOTFOUND);
}

/***** exported functions *****/

void SSInit(void)
{
	scnt = 0;
}

void SSAdd(int x)
{
	if (scnt == SSMAXSIZ)
                set_eFlag();
	else if (FindPos(x) != NOTFOUND)
                set_eFlag();
	else {
		setArray[scnt] = x;
		scnt++;
	}
}

void SSDel(int x)
{
	int i;
	
	i = FindPos(x);
	if (i == NOTFOUND)
                set_eFlag();
	else {
		for (; i < scnt; i++)
			setArray[i] = setArray[i+1];
		scnt--;
	}
}

int SSIsMem(int x)
{
	return(FindPos(x) != NOTFOUND);
}

int SSSize(void)
{
	return(scnt);
}

void SSDump(void)
{
	int i;

	printf("siz=%d\n",scnt);
	for (i = 0; i < scnt; i++)
		printf("s[%d]=%d\n",i,setArray[i]);
}
