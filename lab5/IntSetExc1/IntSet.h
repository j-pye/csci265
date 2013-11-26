/********** SSet module---interface specification **********/


/*
**		Overview
**
**	The SSet (simple set) module provides access to a set of at most
**	SSMAXSIZ integer elements. 
**
**	state:
**		s: set of integers
**
**	assumptions:
**		SSInit is called before any other access routine
*/


/***** constants *****/

#define  SSMAXSIZ 2 /* max capacity of set */

/***** types *****/
 
/***** exported procedures and functions *****/

/*
** Assumptions:
**	none
** Behaviour:
**	make s empty
*/
void SSInit(void);

/*
** Assumptions:
**	none
** Behaviour:
**	if x is an element of s then 
**		throw DuplicateExc
**	else if s is full then
**		throw FullExc
**	else
**		add x to s
*/
void SSAdd(int x);

/*
** Assumptions:
**	none
** Behaviour:
**	if x is not an element of s then 
**		throw NotFoundExc 
**	else
**		delete x from s
*/
void SSDel(int x);

/*
** Assumptions:
**	none
** Behaviour:
**	if x is an element of s then 
**		return true
**	else
**		return false
*/
int SSIsMem(int x);

/*
** Assumptions:
**	none
** Behaviour:
**	return the number of elements in s 
*/
int SSSize(void);

/*
** Assumptions:
**	none
** Behaviour:
**	Display the elements of s
**      ----> FOR INTERACTIVE TESTING ONLY <--- 
*/
void SSDump(void);
