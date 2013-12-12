/*********** Exceptions module---implementation **********/

#include <setjmp.h>

/***** local constants *****/

/***** local types *****/

/***** local variables *****/

/***** global variables *****/

jmp_buf EXenv__;
int EXnum__;

char* getException(int num) {
	switch(num) {
		case 1: return "DuplicateExc!";
		case 2: return "FullExc";
		case 3: return "NotFoundExc";
		default: return "Unknown exception";
	}
}
