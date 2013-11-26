/********** Error module---interface specification **********/


/*
**		Overview
**
**	The Error module provides access to flag used to signify the
**      presence or absence of an exception.
**
**	state:
**		eFlag: boolean
**
**	assumptions:
**              none
*/


/***** constants *****/

/***** types *****/

/***** exported procedures and functions *****/

/*
** Assumptions:
**	none
** Behaviour:
**	eFlag:=true
*/
void set_eFlag(void);

/*
** Assumptions:
**	none
** Behaviour:
**	eFlag=false
*/
void clear_eFlag(void);

/*
** Assumptions:
**	none
** Behaviour:
**	return eFlag
*/
int get_eFlag(void);



